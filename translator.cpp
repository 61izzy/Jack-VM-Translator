#include "utils.hpp"
#include "parser.hpp"
#include "codewriter.hpp"

// TODO: check that all output files are correct
// TODO: make optimizations (if necessary, but probably just keep this project simple for now)

// TODO: make it possible to go through a directory, select files that have a .vm extension, and parse them
// bruh we actually have to consider if input is a directory or a .vm file
// output file should either be fileName.asm or directoryName.asm depending on which one it is

/*
get files from directory:

#include <filesystem>

namespace fs = std::filesystem;

const fs::path pathToShow{ argc >= 2 ? argv[1] : fs::current_path() };

for (const auto& entry : fs::directory_iterator(pathToShow)) {
    const auto filenameStr = entry.path().filename().string();
    if (entry.is_directory()) {
        std::cout << "dir:  " << filenameStr << '\n';
    }
    else if (entry.is_regular_file()) {
        std::cout << "file: " << filenameStr << '\n';
    }
    else
        std::cout << "??    " << filenameStr << '\n';
}
*/

int main(int argc, char *argv[]) {
    // preprocessing file name and folder
    std::string filepath = argv[1];
    int filename_start = filepath.rfind("/") + 1, filename_end = filepath.rfind(".");
    std::string filename = filepath.substr(filename_start, filename_end - filename_start),
           filefolder = filepath.substr(0, filename_start - 1);

    // opening input and output files
    std::ifstream input(argv[1]);
    std::ofstream output(filefolder + "/" + filename + ".asm");

    // initializing parser and codewriter
    Parser parser(input);
    CodeWriter writer(output, filename);

    // goes through all commands in file until parser reaches eof
    while (parser.hasMoreCommands()) {
        parser.advance();
        if (parser.isEmptyLine()) continue;
        CommandType type = parser.commandType();
        std::string arg1 = "";
        int arg2 = -1;
        if (type != C_RETURN) arg1 = parser.arg1();
        if (type == C_PUSH || type == C_POP || type == C_FUNCTION || type == C_CALL) arg2 = parser.arg2();

        if (type == C_ARITHMETIC) writer.writeArithmetic(arg1);
        else if (type == C_PUSH || type == C_POP) writer.writePushPop(type, arg1, arg2);
        else if (type == C_LABEL) writer.writeLabel(arg1);
        else if (type == C_GOTO) writer.writeGoto(arg1);
        else if (type == C_IF) writer.writeIf(arg1);
        else if (type == C_FUNCTION) writer.writeFunction(arg1, arg2);
        else if (type == C_CALL) writer.writeCall(arg1, arg2);
        else if (type == C_RETURN) writer.writeReturn();
    }

    writer.close();
    return 0;
}

/*
possible optimizations (can come back to this later after course is done):
- push twice then binary op or comp (can also happen if nothing changes these two values between pushing and the next binary op/comp)
- push then unary op
- push then unary op then pop (especially if it's to the same location)
- consecutive binary operations and unary operations (and false comparisons)
- pushes that get popped without being modified (especially if it's to the same location)
- if-goto could be optimized: if previous comparison was false, no need for (@SP, A=M-1)

*note: most of these optimizations will require some precomputation
*/