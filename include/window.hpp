#ifndef __WINDOW__HPP__
#define __WINDOW__HPP__
#include <ncurses.h>
#include <vector>
#include "log.hpp"
//using namespace std; NEVER PUT USING NMAESPACE IN A HEADER FILE. CAN LEAD TO BUGS IN COMPLETELY INDEPENDED PART OF AN APP.
//
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
typedef struct {
    bool handled = true;
} Status; // return status for callback function

class EditorWindow {
    WINDOW* win;
    int height, width;
    int ypos, xpos;

    std::vector<char> buffer;
    std::vector<char>::iterator ibuf;

    Log log;
public:
    EditorWindow( int h = 0, int w = 0, int y = 0, int x = 0)
         
        : height(h)
        , width(w)
        , ypos(y)
        , xpos(x)
        , log(Log(warning))
    {
        log.out(info,"EditorWindow Constructor");
        if (h == 0 || w == 0)
            getmaxyx(stdscr, h, w);
        win = newwin(h, w, y, x);
        wborder(win, 0, 0, 0, 0, 0, 0, 0, 0);
        log << "window" << (void *)win << h << w << y << x << '\n';
        buffer = std::vector<char>(h * w, 0);
        ibuf = buffer.begin();
    }
    ~EditorWindow()
    {
        if (win)
            delwin(win);
    }
    void handler(int key, Status& stat); // Handle the key send to this window. (call back function)
    const char* text();
    void settext(const char*);
    void close_win();
};

#endif
