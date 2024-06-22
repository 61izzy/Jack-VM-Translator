#include "utils.hpp"
#include "parser.hpp"
#include "codewriter.hpp"

// TODO: change includes later
// TODO: probably edit utils.hpp to not include unnecessary stuff

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
    }

    writer.close();
    return 0;
}