# generic-makefile
A generic makefile that I commonly use for small and simple C++ projects.

All source files should be placed inside the `src` directory, and all header files inside the `include` directory.

Simply put the Makefile into the project root and run `make`.

A `a.out` (or `a.exe` on Windows) should be generated if nothing goes wrong.
All object files generated would be placed inside the `obj` directory.

Type `make clean` to clean up the executable and all object files, and remove the `obj` directory if it is empty.
