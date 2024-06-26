#ifndef CODEWRITER_HPP
#define CODEWRITER_HPP

#include "utils.hpp"

class CodeWriter {
private:
    int compCount = 0, currCallCount = 0;
    std::ofstream &output;
    std::string filename = "", currFunc = "";
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
        {"eq", "JEQ"},
        {"gt", "JGT"},
        {"lt", "JLT"}
    };
    void writePointer(CommandType command, std::string segment, int index);

public:
    CodeWriter(std::ofstream &output) : output{output} {}
    CodeWriter(std::ofstream &output, std::string filename) : output{output}, filename{filename} {}
    void setFileName(std::string fileName);
    void writeInit();
    void writeArithmetic(std::string command);
    void writePushPop(CommandType command, std::string segment, int index);
    void writeLabel(std::string label);
    void writeGoto(std::string label);
    void writeIf(std::string label);
    void writeFunction(std::string functionName, int numVars);
    void writeCall(std::string functionName, int numArgs);
    void writeReturn();
    void close() {
        output.close();
    }
};

#endif