#ifndef PARSER_HPP
#define PARSER_HPP

#include "utils.hpp"

class Parser {
private:
    std::ifstream &input;
    std::string currLine;
    CommandType currType;
    std::unordered_map<std::string, CommandType> commandTable{
        {"add", C_ARITHMETIC},
        {"sub", C_ARITHMETIC},
        {"neg", C_ARITHMETIC},
        {"eq", C_ARITHMETIC},
        {"gt", C_ARITHMETIC},
        {"lt", C_ARITHMETIC},
        {"and", C_ARITHMETIC},
        {"or", C_ARITHMETIC},
        {"not", C_ARITHMETIC},
        {"pop", C_POP},
        {"push", C_PUSH},
        {"label", C_LABEL},
        {"goto", C_GOTO},
        {"if-goto", C_IF},
        {"function", C_FUNCTION},
        {"call", C_CALL},
        {"return", C_RETURN}
    };

public:
    Parser(std::ifstream &input) : input{input} {}
    bool hasMoreCommands();
    void advance() {} // hasMoreCommands will automatically advance if not eof, so do nothing
    bool isEmptyLine();
    CommandType commandType();
    std::string arg1();
    int arg2();
};

#endif