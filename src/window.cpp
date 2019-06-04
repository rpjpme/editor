#include "window.hpp"

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
    endwin();
};
WithStdscr& WithStdscr::CreateResource()
{
    return *new WithStdscr();
}
