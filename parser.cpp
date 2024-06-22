// TODO: constructor
// TODO: hasMoreCommands
// TODO: advance
// TODO: commandType returns C_ARITHMETIC, C_PUSH, C_POP, C_LABEL, C_GOTO, C_IF, C_FUNCTION, C_RETURN, C_CALL
// TODO: arg1 returns string representing the first argument of current command, or the command itself if C_ARITHMETIC
// - should not be called if current command is C_RETURN
// TODO: arg2 returns int representing the second argument of current command
// - should only be called if current command is C_PUSH, C_POP, C_FUNCTION, or C_CALL