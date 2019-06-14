#ifndef __LOG_HPP__
#define __LOG_HPP__

#include <fstream>
#include <iostream>


class Log {
    static int counter;
    public:
    static std::ofstream out;
    Log(const char* fname = "tmp.log")
    {
        ++counter;
        if (counter == 1) {
            out.open(fname, std::ios::out | std::ios::trunc);
            out << "Start Log file at:" << '\n';
        };
    };

    ~Log()
    {
        if (--counter == 0) {
            out.close();
        }
    };
};
#endif
