// TODO: writeArithmetic (takes command as string and writes the assembly code)
// TODO: writePushPOP (takes command C_PUSH or C_POP, segment as string, and index as int)
// TODO: initialize segment table

#include "codewriter.hpp"
#include "utils.hpp"

void CodeWriter::writePointer(std::string segment, int index) {
    if (segmentTable.find(segment) != segmentTable.end()) {
        output << "@" << index << "\n";
        output << "D=A\n";
        output << "@" << segmentTable[segment] << "\n";
        output << "A=D+M\n";
    }
    else if (segment.compare("pointer") == 0) {
        // pointer segment is basically THAT if index == 1, THIS if index == 0
        output << "@" << (index ? "THAT" : "THIS") << "\n";
    }
    else if (segment.compare("temp") == 0) {
        // temp segment starts at RAM[5]
        output << "@" << 5 + index << "\n";
    }
    else if (segment.compare("static") == 0) {
        // @<filename>.<index>
        output << "@" << filename << "." << index << "\n";
    }
    else {
        // registers 13-15 that we will use for arithmetic
        output << "@R" << index << "\n";
    }
}

void CodeWriter::writeArithmetic(std::string command) {

    output << "// debug: " << command << "\n"; // for debugging purposes

    if (unaryOpTable.find(command) != unaryOpTable.end()) {
        writePushPop(C_POP, "R", 13);
        output << "M=" << unaryOpTable[command] << "M\n";
        writePushPop(C_PUSH, "R", 13);
    }
    else if (binaryOpTable.find(command) != binaryOpTable.end()) {
        writePushPop(C_POP, "R", 13);
        writePushPop(C_POP, "R", 14);
        output << "D=M\n";
        output << "@R13\n";
        output << "M=D" << binaryOpTable[command] << "M\n";
        writePushPop(C_PUSH, "R", 13);
    }
    else if (binaryCompTable.find(command) != binaryOpTable.end()) { // if comparison operation
        ++compCount;
        writePushPop(C_POP, "R", 13);
        writePushPop(C_POP, "R", 14);
        output << "D=M\n";
        output << "@R13\n";
        output << "D=D-M\n";
        output << "@R15\n";
        output << "M=0\n";
        output << "@COMPLABEL" << compCount << "\n";
        output << "D;" << binaryCompTable[command] << "\n"; // if opposite is true, skips ahead so that the result is not set to true
        output << "@R15\n";
        output << "M=-1\n";
        output << "(COMPLABEL" << compCount << ")\n";
        writePushPop(C_PUSH, "R", 15);
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
            writePointer(segment, index);
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
        
        writePointer(segment, index);
        output << "D=A\n"; // we can optimize this part for local, argument, this, and that segments by writing D=D+M instead of A=A+M
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