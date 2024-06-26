# Jack-VM-Translator

A translator written in C++ that translates Jack Virtual-Machine code into Hack assembly code that can run on the Hack platform. Part of the nand2tetris course.

To run:

For a single file:

```
./translator <filepath>
```

Replace filepath with the path to the intended file, including the .vm extension. For a file `<folderpath>/<filename>.vm`, outputs the assembly code into a file with the name format `<folderpath>/<filename>.asm`.

For a directory:

```
./translator <folderpath>
```

All `.vm` files in the directory will be combined and translated into a single file with the name format `<folderpath>/<folderpath>.asm`.

There are a few example Jack VM programs included along with their translated asm programs.

Note: Translator is not the most efficient. Also currently only works for push, pop, and arithmetic commands.