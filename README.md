# Jack-VM-Translator

A translator written in C++ that translates Jack Virtual-Machine code into Hack assembly code. Part of the nand2tetris course.

To run:

```
./translator <filepath>
```

Replace filepath with the path to the intended file, including the .vm extension. For a file <folderpath>/<filename>.vm, outputs the assembley code into a file with the name format <folderpath>/<filename>.asm.

There are a few example Jack VM programs included along with their translated asm programs.

Note: Translator is not the most efficient. Also currently only works for push, pop, and arithmetic commands.