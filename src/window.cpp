#include "window.hpp"
#include <cctype>

void EditorWindow::handler(int key, Status& stat)
{
    Log::out << "key:" << key << "Current w:" << cwidth << "current height:" << cheight << "buffer size:" << buffer.size() << "\n";
    switch (key) {
    case KEY_BACKSPACE:
        if (ibuf != buffer.end()) {
            *ibuf = (char)0; // add cast so, not to confuse with setting the pointer to  0/NULL
            --ibuf;
            cwidth--;
        }
        break;
    case 10:
    case KEY_ENTER:
        Log::out << "ceight:" << cheight << '\n';
            *ibuf = (char)key;
            ++ibuf;
        cwidth = 0; // end of screen go back to start.
        Log::out << "ceight after:" << cheight << '\n';
        break;
    default:
        if (isprint(key) || key == (int)'\n') {
        if (cwidth > width-1) {
            cheight++;
            cwidth = 0;
        };
            *ibuf = (char)key;
            ++ibuf;
            ++cwidth;
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
