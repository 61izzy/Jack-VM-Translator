#include <bits/stdc++.h>
#include "parser.hpp"
#include "codewriter.hpp"

// TODO: change includes later
// TODO: instantiate parser and codewriter objects

int main(int argc, char *argv[]) {
    // preprocessing file name and folder
    std::string filepath = argv[1];
    int filename_start = filepath.rfind("/") + 1, filename_end = filepath.rfind(".");
    std::string filename = filepath.substr(filename_start, filename_end - filename_start),
           filefolder = filepath.substr(0, filename_start - 1);

    // opening input and output files
    std::ifstream input(argv[1]);
    std::ofstream output(filefolder + "/" + filename + ".asm");


    output.close();
    return 0;
}