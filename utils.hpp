#ifndef UTILS_HPP
#define UTILS_HPP

#include<string>
#include<unordered_map>
#include<fstream>
#include<iostream>
#include<filesystem>

enum CommandType {
    C_ARITHMETIC,
    C_PUSH,
    C_POP,
    C_LABEL,
    C_GOTO,
    C_IF,
    C_FUNCTION,
    C_RETURN,
    C_CALL
};

#endif