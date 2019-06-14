#ifndef __SCREEN__HPP__
#define __SCREEN__HPP__
#include <ncurses.h>
#include "log.hpp"
//using namespace std; NEVER PUT USING NMAESPACE IN A HEADER FILE. CAN LEAD TO BUGS IN COMPLETELY INDEPENDED PART OF AN APP.
//
// Withscreen: is a ncurses screen Resource Management.
// It uses c++'s raii to accomplsh this. 
// To make sure the Widthstdscr resource is not shared the copy and move constructors are
// deleted. 
// The Contructor will init the screen uses al the nessecery ncurses command. 
// and the deconstructor will close all handles and set the screen to normal use.
class WithStdscr {

public:
    WINDOW* _stdscr;
    WithStdscr();
    WithStdscr(const WithStdscr &) = delete;
    WithStdscr(const WithStdscr &&) = delete;
    ~WithStdscr();

};
#endif
