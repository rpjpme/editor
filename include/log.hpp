#ifndef __LOG_HPP__
#define __LOG_HPP__

#include <chrono>
#include <ctime>
#include <fstream>
#include <iostream>

enum LogLevel {
    info = 0,
    debug,
    warning,
    error
};

class Log {
    static std::ofstream out;
    static int counter;
    static std::time_t start_time;
    std::string file_name;
    LogLevel log_level;
    public:
    Log(LogLevel lev = info, const char* fname = "tmp.log")
        : log_level(lev)
        , file_name(fname)
    {
        ++counter;
        if (!out) {
            out.open(file_name, std::ios::out | std::ios::trunc);
            start_time = std::time(nullptr);
        };
        out << "Start Log file at:" << std::ctime(&start_time) << '\n';
    };
//    template<typename T>
 //   Log& out(LogLevel level=info, const T msg)
  //  {
   //     std::string level_s = (level == info ? "Info" : level == debug ? "Debug" : level == warning ? "Warning" : "Error");
//        std::time_t now = std::time(nullptr);
 //       double dt_seconds = std::difftime(now, start_time);
  //      out << level_s << ": @" << dt_seconds << "||" << msg << "||\n";
   //     return *this;
    //};
    template<typename T>
    Log& operator <<( const &T msg)
    {
        out << msg << " ";
        return *this;
    };


    ~Log()
    {
        if (--counter == 0) {
            out.close();
        }
    };
};
#endif
