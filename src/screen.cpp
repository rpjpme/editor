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

WithStdscr::~WithStdscr()
{
    if (stdscr)
        endwin();
};

