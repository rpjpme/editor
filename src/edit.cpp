#include "edit.hpp"
#include "log.hpp"
#include "window.hpp"
#include "screen.hpp"
#include <exception>
#include <iostream>
#include <vector>
//using namespace std;
//Log log();

int main(int argc, char* argv[])
{
    { // start of resource scope.
        WithStdscr screen(); // Init stdscr
        EditorWindow editor( 50, 50);
        int key = 0;
        Status status;
        bool exit = false;
        while (!exit) {
            key = getch();
            switch (key) {
            case 27:
            case '`': // backup for debug purposes.
                exit = true;
            default:
                editor.handler(key, status);
            };
        };
    }//end of scope for stdscr 
    cout << "Thank you for flying air ncurses. \n";
    return 0;
}
