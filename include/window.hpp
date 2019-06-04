#ifndef __WINDOW__HPP__
#define __WINDOW__HPP__
#include <ncurses.h>
#include <string>

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

#endif
