#include "edit.hpp"
#include "window.hpp"
#include <exception>
#include <iostream>
#include <vector>
using namespace std;
int main(int argc, char* argv[])
{
    WithStdscr main_window = WithStdscr::CreateResource();
    char* buffer = new char[1024];
    char* p_buf = buffer;
    const char* const p_end = &buffer[1023];
    bool exit = false;
    int key = 0;
    int height, width;
    int cur_h, cur_w;
    getmaxyx(stdscr, height, width);
    while (!exit) {
        key = getch();
        switch (key) {
        case KEY_BACKSPACE:
            if (p_buf != buffer) {
                *p_buf = (char)0; // add cast so, not to confuse with setting the pointer to  0/NULL
                --p_buf;
            }
            break;
        case 27:
        case '`': // backup for debug purposes.
            exit = TRUE;
        case KEY_ENTER:
            if (++cur_h > height) {
                cur_h = 0; // end of screen go back to start.
            };
            cur_w = 0;
            break;
        default:
            if (key) {
                /*            move(cur_h, cur_w++);
          addch(key);
            if (cur_w > width) {
                cur_w = 0;
                if (++cur_h > height) {
                    cur_h = 0; // for now: if cursor hits the bottem of the scren it returns to 0. In a real editor text must scroll or do somthing real;
                };
            };
*/
                *p_buf = (char)key;
                ++p_buf;
                if (p_buf == p_end)
                    p_buf = buffer; // for now we have a circular buffer.
            };
        };
        move(0, 0);
        wclear(stdscr);
        waddstr(stdscr, buffer);
        refresh();
    }
    return 0;
}
