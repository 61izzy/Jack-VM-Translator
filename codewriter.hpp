#ifndef CODEWRITER_HPP
#define CODEWRITER_HPP

#include "utils.hpp"

class CodeWriter {
private:
    int compCount = 0;
    std::ofstream &output;
    std::string filename;
    std::unordered_map<std::string, std::string> segmentTable{
        {"local", "LCL"},
        {"argument", "ARG"},
        {"this", "THIS"},
        {"that", "THAT"}
    };
    std::unordered_map<std::string, std::string> unaryOpTable{
        {"neg", "-"},
        {"not", "!"}
    };
    std::unordered_map<std::string, std::string> binaryOpTable{
        {"add", "+"},
        {"sub", "-"},
        {"and", "&"},
        {"or", "|"}
    };
    std::unordered_map<std::string, std::string> binaryCompTable{
        {"eq", "JNE"},
        {"gt", "JLE"},
        {"lt", "JGE"}
    };
    void writePointer(std::string segment, int index);

public:
    CodeWriter(std::ofstream &output, std::string filename) : output{output}, filename{filename} {}
    void writeArithmetic(std::string command);
    void writePushPop(CommandType command, std::string segment, int index);
    void close() {
        output.close();
    }
};

#endif