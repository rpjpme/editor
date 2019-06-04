#include "edit.hpp"
#include "window.hpp"
#include <exception>
#include <iostream>
#include <vector>
using namespace std;
int main(int argc, char* argv[])
{
    WithStdscr main_window = WithStdscr::CreateResource();
    int height, width;
    getmaxyx(stdscr, height, width);
    //    char* buffer = new char[1024];
    vector<char> buffer(height * width, 0);
    auto ibuf = buffer.begin(); // get iterator of class vector
    int key = 0;
    bool exit = false;
    int cur_h, cur_w;
    while (!exit) {
        key = getch();
        switch (key) {
        case KEY_BACKSPACE:
            if (ibuf != ibuf_end) {
                *ibuf = (char)0; // add cast so, not to confuse with setting the pointer to  0/NULL
                --ibuf;
            }
            break;
        case 27:
        case '`': // backup for debug purposes.
            exit = true;
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
                *ibuf = (char)key;
                ++ibuf;
                if (ibuf == buffer.end())
                    ibuf = buffer.begin(); // for now we have a circular buffer.
            };
        };
        move(0, 0);
        wclear(stdscr);
        waddstr(stdscr, buffer.data());
        refresh();
    }
    return 0;
}
