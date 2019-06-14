#ifndef __BUFFER__H__
#define __BUFFER__H__

#include<vector>
#include<string>

class FileBuffer{
    std::string file_name;
    std::vector<int> buffer;

    public:
    typedef iterator = std::vector<int>::iterator;
    private:
    // the two iterators who determen which part of the text is on screen , the screen windiow iterators
        iterator sb_iter;
        iterator se_iter;
        size_t max_screen_size, screen_size;    // max number of items that van fill the screen, the size of the cuurent window
        
        iterator cur_iter;  // where the 'cursor' is. 
    public:
    FileBuffer(const char * fname = "*") 
        : file_name(fname)
        , buffer()
        , max_screen_size(0)
        , screen_size(0)
        {};
    FileBuffer(size_t bsize)
        : file_name("*")
        , buffer(bsize,0)
        , max_screen_size(0)
        , screen_size(0)
    {};
    iterator& begin(){ 
        return buffer.begin();
    };
    iterator& end(){ 
        return buffer.end();
    };
};

#endif
