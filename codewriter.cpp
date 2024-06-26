#include "codewriter.hpp"
#include "utils.hpp"

void CodeWriter::setFileName(std::string fileName) {

    output << "// debug: start of file " << fileName << "\n"; // for debugging purposes

    filename = fileName;
    std::cout << "Translation of file " << filename << ".vm has started\n";
}

void CodeWriter::writeInit() {
    // set SP to 256
    output << "@256\n";
    output << "D=A\n";
    output << "@SP\n";
    output << "M=D\n";
    // call Sys.init
    writeCall("Sys.init", 0);
}

void CodeWriter::writePointer(CommandType command, std::string segment, int index) {
    if (segmentTable.find(segment) != segmentTable.end()) {
        // one of the four variable length memory segments
        // slight optimization, could save a line per command
        if (index < 2) output << "D=" << index << "\n";
        else {
            output << "@" << index << "\n";
            output << "D=A\n";
        }
        output << "@" << segmentTable[segment] << "\n";
        // slight optimization
        if (command == C_PUSH) output << "A=D+M\n";
        else if (command == C_POP) output << "D=D+M\n";
    }
    else if (segment.compare("pointer") == 0) {
        // pointer segment is basically THIS if index == 0, THAT if index == 1
        output << "@" << (index ? "THAT" : "THIS") << "\n";
        if (command == C_POP) output << "D=A\n";
    }
    else if (segment.compare("temp") == 0) {
        // temp segment is from RAM[5] to RAM[12], inclusive
        output << "@" << 5 + index << "\n";
        if (command == C_POP) output << "D=A\n";
    }
    else if (segment.compare("static") == 0) {
        // filename is really only used for the static memory segment, which is from RAM[16] to RAM[255 ]
        // @<filename>.<index>
        output << "@" << filename << "." << index << "\n";
        if (command == C_POP) output << "D=A\n";
    }
}

void CodeWriter::writeArithmetic(std::string command) {

    output << "// debug: arithmetic " << command << "\n"; // for debugging purposes

    // optimizing all operations by not actually popping anything from the stack
    // still have to remember to decrement stack pointer for binary operations and comparisons
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
        output << "@COMPLABEL" << compCount << "\n";
        output << "D;" << binaryCompTable[command] << "\n"; // if is true, skips ahead so that the result is not set to false
        output << "@SP\n";
        output << "A=M-1\n";
        output << "M=0\n";
        output << "(COMPLABEL" << compCount << ")\n";
    }
}

void CodeWriter::writePushPop(CommandType command, std::string segment, int index) {

    output << "// debug: " << (command == C_PUSH ? "push " : "pop ") << segment << " " << index << "\n"; // for debugging purposes

    if (command == C_PUSH) {
        // constant is special because we only use A as a data register
        if (segment.compare("constant") == 0) { // only possible for push commands
            // saves 1 line per command for index < 2
            if (index < 2) output << "D=" << index << "\n";
            else {
                output << "@" << index << "\n";
                output << "D=A\n";
            }
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

void CodeWriter::writeLabel(std::string label) {

    output << "// debug: label " << label << "\n"; // for debugging purposes

    output << "(" << currFunc << "$" << label << ")\n";
}

void CodeWriter::writeGoto(std::string label) {

    output << "// debug: goto " << label << "\n"; // for debugging purposes

    output << "@" << currFunc << "$" << label << "\n";
    output << "0;JMP\n";
}

void CodeWriter::writeIf(std::string label) {

    output << "// debug: if-goto " << label << "\n"; // for debugging purposes

    // according to specifications, 0 is false
    output << "@SP\n";
    output << "AM=M-1\n";
    output << "D=M\n";
    output << "@" << currFunc << "$" << label << "\n";
    output << "D;JNE\n";
}

void CodeWriter::writeFunction(std::string functionName, int numVars) {

    output << "// debug: function " << functionName << " " << numVars << "\n"; // for debugging purposes

    // labels the start of a function in asm
    currFunc = functionName;
    currCallCount = 0;
    output << "(" << functionName << ")\n";
    // set LCL to SP
    output << "@SP\n";
    output << "D=M\n";
    output << "@LCL\n";
    output << "AM=D\n";
    if (!numVars) return; // don't write unnecessary instructions
    // sets RAM[LCL] ... RAM[LCL + numVars - 1] (local segment) to 0
    for (int i = 0; i < numVars; i++) {
        output << "M=0\n";
        output << "A=A+1\n";
    }
    // set SP to LCL + numVars
    output << "D=A\n";
    output << "@SP\n";
    output << "M=D\n";
}

void CodeWriter::writeCall(std::string functionName, int numArgs) {

    output << "// debug: call " << functionName << " " << numArgs << "\n"; // for debugging purposes

    // stores return address
    output << "@" << currFunc << "$ret." << ++currCallCount << "\n";
    output << "D=A\n";
    output << "@SP\n";
    output << "M=M+1\n";
    output << "A=M-1\n";
    output << "M=D\n";
    // pushes the LCL, ARG, THIS, and THAT pointers onto the stack in that order
    for (int i = 1; i < 5; i++) {
        output << "@" << i << "\n";
        output << "D=M\n";
        output << "@SP\n";
        output << "M=M+1\n";
        output << "A=M-1\n";
        output << "M=D\n";
    }
    // set ARG
    output << "D=A+1\n";
    output << "@" << numArgs + 5 << "\n";
    output << "D=D-A\n";
    output << "@ARG\n";
    output << "M=D\n";
    // jumps to the function
    output << "@" << functionName << "\n";
    output << "0;JMP\n";
    // write label for return address
    output << "(" << currFunc << "$ret." << currCallCount << ")\n";
}

void CodeWriter::writeReturn() {

    output << "// debug: return\n"; // for debugging purposes

    // stores return address in temp variable (register R13)
    output << "@5\n";
    output << "D=A\n";
    output << "@LCL\n";
    output << "A=M-D\n";
    output << "D=M\n";
    output << "@R13\n";
    output << "M=D\n";
    // write return value onto stack and adjusting the stack pointer for caller
    // store return value in temp variable (register R14)
    output << "@SP\n";
    output << "A=M-1\n";
    output << "D=M\n";
    output << "@R14\n";
    output << "M=D\n";
    // set SP to ARG + 1
    output << "@ARG\n";
    output << "D=M\n";
    output << "@SP\n";
    output << "M=D+1\n";
    // write return value to SP - 1
    output << "@R14\n";
    output << "D=M\n";
    output << "@SP\n";
    output << "A=M-1\n";
    output << "M=D\n";
    // restore THAT, THIS, ARG, and LCL pointers from previous call frame in that order
    // restoring LCL last because we need current LCL pointer to access everything else
    for (int i = 1; i < 5; i++) {
        output << "@" << i << "\n";
        output << "D=A\n";
        output << "@LCL\n";
        output << "A=M-D\n";
        output << "D=M\n";
        output << "@" << 5 - i << "\n";
        output << "M=D\n";
    }
    // return to the specified return address
    output << "@R13\n";
    output << "A=M\n";
    output << "0;JMP\n";
}