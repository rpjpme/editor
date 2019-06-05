#ifndef __WINDOW__HPP__
#define __WINDOW__HPP__
#include <ncurses.h>
#include <string>
#include <vector>
using namespace std;
// Withscreen: is a ncurses screen Resource Management.
// when instance of WithStdscr goes out of scope all settings are reverted to a normal terminal.
class WithStdscr {
public:
    WINDOW* _stdscr;
    WithStdscr();
    //WithStdscr(const WithStdscr&) = delete;
    //    WithStdscr(WithStdscr&) = delete;
    ~WithStdscr();

    static WithStdscr& CreateResource();
};

class EditorWindow {
    WINDOW* win;
    int height, width;
    int ypos, xpos;

    vector<char> buffer;

public:
    EditorWindow(WINDOW* w_p = nullptr, int h = 0, int w = 0, int y = 0, int x = 0)
        : win(w_p)
        , height(h)
        , width(w)
        , ypos(y)
        , xpos(x)
    {
        if (win)
            return;
        if (h == 0 || w == 0)
            getmaxyx(stdscr, h, w);
        win = newwin(h, w, y, x);
    }
    ~EditorWindow()
    {
        delwin(win);
    }
    void start(); // full control to this window.
    const char* text();
    void settext(const char*);
};

#endif
