#include "utils.hpp"
#include "parser.hpp"
#include "codewriter.hpp"

// TODO: make optimizations (if necessary, but probably just keep this project simple for now)

void processFile(Parser &parser, CodeWriter &writer) {
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
}
int main(int argc, char *argv[]) {
    // using std::filesystem to process input file
    std::filesystem::path path = argv[1];

    // if input is a file, we assume that it is a .vm file and process the individual file
    if (std::filesystem::is_regular_file(path)) {
        // processing file name and folder
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

        processFile(parser, writer);

        writer.close();
    }
    else {
        // processing folder name and path string
        std::string pathstring = path.string();
        // remove trailing slashes
        if (pathstring.length() > 1 && pathstring[pathstring.length() - 1] == '\\' && pathstring[pathstring.length() - 2] == '\\') 
            pathstring = pathstring.substr(0, pathstring.length() - 2);
        if (pathstring[pathstring.length() - 1] == '/' || pathstring[pathstring.length() - 1] == '\\') 
            pathstring = pathstring.substr(0, pathstring.length() - 1);
        std::string foldername = pathstring.substr(pathstring.rfind('/') + 1);

        // opening output file
        std::ofstream output(pathstring + "/" + foldername + ".asm");

        // initializing codewriter
        CodeWriter writer(output);
        writer.writeInit();

        // iterating through all files in the directory, skipping folders and files without the .vm extension
        for (auto& entry : std::filesystem::directory_iterator(path)) {
            std::string filename = entry.path().filename().string();
            if (!entry.is_regular_file() || filename.substr(filename.rfind('.')).compare(".vm")) continue;

            // opening input file
            std::ifstream input(pathstring + "/" + filename);

            // initializing parser for current file
            Parser parser(input);

            // setting filename for writer
            writer.setFileName(filename.substr(0, filename.rfind('.')));

            processFile(parser, writer);
        }

        writer.close();
    }

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

*note: most of these optimizations will require some precomputation and need to actually evaluate the code
*/