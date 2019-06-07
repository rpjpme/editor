#ifndef __WINDOW__HPP__
#define __WINDOW__HPP__
#include <ncurses.h>
#include <vector>
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
