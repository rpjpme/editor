#include "window.hpp"
#include <cctype>
WithStdscr::WithStdscr()
{
    stdscr = stdscr;
    initscr();
    cbreak();
    noecho();
    keypad(stdscr, TRUE);
    clearok(stdscr, TRUE);
};
//WithStdscr::WithStdscr(const WithStdscr&) = delete;
//WithStdscr::WithStdscr(WithStdscr&) = delete;
WithStdscr::~WithStdscr()
{
    if (stdscr)
        endwin();
};
// Factory function for WithStdscr resource manager.
WithStdscr& WithStdscr::CreateResource()
{
    return *new WithStdscr();
}

void EditorWindow::handler(int key, Status& stat)
{
    int cur_h = 0, cur_w = 0;
    switch (key) {
    case KEY_BACKSPACE:
        if (ibuf != buffer.end()) {
            *ibuf = (char)0; // add cast so, not to confuse with setting the pointer to  0/NULL
            --ibuf;
        }
        break;
    case KEY_ENTER:
        if (++cur_h > height) {
            cur_h = 0; // end of screen go back to start.
        };
        cur_w = 0;
        break;
    default:
        if (isprint(key) || key == (int)'\n') {
            *ibuf = (char)key;
            ++ibuf;
            if (ibuf == buffer.end())
                ibuf = buffer.begin(); // for now we have a circular buffer.
        };
        stat.handled = false;
    };
    move(0, 0);
    wclear(stdscr);
    waddstr(stdscr, buffer.data());
    refresh();
    stat.handled = true;
    return;
}; // Handle the key send to this window. (call back function)

const char* EditorWindow::text()
{
    return buffer.data();
};
void EditorWindow::settext(const char*){};
void EditorWindow::close_win(){};
