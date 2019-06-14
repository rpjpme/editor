#ifndef __WINDOW__HPP__
#define __WINDOW__HPP__
#include <ncurses.h>
#include <vector>
#include "log.hpp"
//using namespace std; NEVER PUT USING NMAESPACE IN A HEADER FILE. CAN LEAD TO BUGS IN COMPLETELY INDEPENDED PART OF AN APP.
typedef struct {
    bool handled = true;
} Status; // return status for callback function

class EditorWindow {
    WINDOW* win;
    int height, width,cwidth,cheight;
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
        , cwidth(0)
        , cheight(0)
        , log(Log())
    {
        Log::out <<"EditorWindow Constructor\n";
        if (h == 0 || w == 0)
            getmaxyx(stdscr, h, w);
        win = newwin(h, w, y, x);
        wborder(win, 0, 0, 0, 0, 0, 0, 0, 0);
        Log::out << "window: " << (void *)win << "h:" << h <<"w:"<< w <<"y:" << y << "x:" << x << '\n';
        buffer = std::vector<char>(h * w, 0);
        ibuf = buffer.begin();
    }
    ~EditorWindow()
    {
        Log::out << "EditorWindow destructor\n";
        if (win)
            delwin(win);
    }
    void handler(int key, Status& stat); // Handle the key send to this window. (call back function)
    const char* text();
    void settext(const char*);
    void close_win();
};

#endif
