#include "codewriter.hpp"
#include "utils.hpp"

void CodeWriter::writePointer(CommandType command, std::string segment, int index) {
    if (segmentTable.find(segment) != segmentTable.end()) {
        output << "@" << index << "\n";
        output << "D=A\n";
        output << "@" << segmentTable[segment] << "\n";
        // slight optimization
        if (command == C_PUSH) output << "A=D+M\n";
        else if (command == C_POP) output << "D=D+M\n";
    }
    else if (segment.compare("pointer") == 0) {
        // pointer segment is basically THAT if index == 1, THIS if index == 0
        output << "@" << (index ? "THAT" : "THIS") << "\n";
        if (command == C_POP) output << "D=A\n";
    }
    else if (segment.compare("temp") == 0) {
        // temp segment starts at RAM[5]
        output << "@" << 5 + index << "\n";
        if (command == C_POP) output << "D=A\n";
    }
    else if (segment.compare("static") == 0) {
        // @<filename>.<index>
        output << "@" << filename << "." << index << "\n";
        if (command == C_POP) output << "D=A\n";
    }
    else {
        // registers 13-15 that we will use for arithmetic
        output << "@R" << index << "\n";
        if (command == C_POP) output << "D=A\n";
    }
}

void CodeWriter::writeArithmetic(std::string command) {

    output << "// debug: " << command << "\n"; // for debugging purposes

    // optimizing all operations by not actually popping anything from the stack
    if (unaryOpTable.find(command) != unaryOpTable.end()) {
        output << "@SP\n";
        output << "A=M-1\n"; // not having to push and pop saves a lot of lines
        output << "M=" << unaryOpTable[command] << "M\n";
    }
    else if (binaryOpTable.find(command) != binaryOpTable.end()) {
        output << "@SP\n";
        output << "AM=M-1\n";
        output << "D=M\n";
        output << "A=A-1\n";
        if (command.compare("sub") == 0) output << "M=M" << binaryOpTable[command] << "D\n";
        else output << "M=D" << binaryOpTable[command] << "M\n";
    }
    else if (binaryCompTable.find(command) != binaryOpTable.end()) { // if comparison operation
        ++compCount;
        output << "@SP\n";
        output << "AM=M-1\n";
        output << "D=M\n";
        output << "A=A-1\n";
        output << "D=M-D\n";
        output << "M=-1\n";
        // we can definitely optimize this by just having one function somewhere that gets called repeatedly
        output << "@COMPLABEL" << compCount << "\n";
        output << "D;" << binaryCompTable[command] << "\n"; // if is true, skips ahead so that the result is not set to false
        output << "@SP\n";
        output << "A=M-1\n";
        output << "M=0\n";
        output << "(COMPLABEL" << compCount << ")\n";
    }
}

void CodeWriter::writePushPop(CommandType command, std::string segment, int index) {

    output << "// debug: " << (command == C_PUSH ? "push " : "pop ") << segment << " " << index<< "\n"; // for debugging purposes

    if (command == C_PUSH) {
        // constant is special because we only use A as a data register
        if (segment.compare("constant") == 0) { // only possible for push commands
            output << "@" << index << "\n";
            output << "D=A\n";
        }
        else {
            writePointer(command, segment, index);
            output << "D=M\n";
        }
        output << "@SP\n";
        output << "M=M+1\n";
        output << "A=M-1\n";
        output << "M=D\n";
    }
    else {
        // TODO: fix this part because we need to somehow store D if writePointer changes it

        // output << "@SP\n";
        // output << "AM=M-1\n";
        // output << "D=M\n";
        // writePointer(segment, index);
        // output << "M=D\n";
        
        writePointer(command, segment, index);
        output << "@R15\n"; // using R15 to temporarily store location to pop to
        output << "M=D\n";
        output << "@SP\n";
        output << "AM=M-1\n";
        output << "D=M\n";
        output << "@R15\n";
        output << "A=M\n";
        output << "M=D\n";
    }
}