#include "parser.hpp"
#include "utils.hpp"

// returns false if eof, else stores next line as string
bool Parser::hasMoreCommands() {
    if (!std::getline(input, currLine)) return false;
    // ignoring comments
    if (currLine.find("//") != -1ULL) currLine = currLine.substr(0, currLine.find("//"));
    // removing extra whitespace
    int idx = currLine.length(); // rtrim
    while (idx && std::isspace(currLine[idx - 1])) --idx;
    currLine = currLine.substr(0, idx);
    idx = 0; // ltrim
    while (idx < currLine.length() && std::isspace(currLine[idx])) ++idx;
    currLine = currLine.substr(idx, currLine.length() - idx);
    return true;
}

// returns if the current line is empty or not
bool Parser::isEmptyLine() {
    return currLine == "";
}

// parses the first token and looks up its command type in the lookup table
CommandType Parser::commandType() {
    int idx = currLine.find(' ');
    if (idx == -1) idx = currLine.length();
    currType = commandTable[currLine.substr(0, idx)];
    return currType;
}

// returns first (and only) token if current command is arithmetic, else parses and returns second token
std::string Parser::arg1() {
    if (currType == C_ARITHMETIC) return currLine;
    int ldx = currLine.find(' ') + 1, rdx = currLine.rfind(' ');
    if (rdx < ldx) rdx = currLine.length();
    return currLine.substr(ldx, rdx - ldx); 
}

// if third token exists, returns its integer value
int Parser::arg2() {
    int idx = currLine.rfind(' ') + 1;
    return std::stoi(currLine.substr(idx, currLine.length() - idx));
}