# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rileyfischer/Documents/dev/languages/rfbs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rileyfischer/Documents/dev/languages/rfbs/build

# Include any dependencies generated for this target.
include build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/compiler_depend.make

# Include the progress variables for this target.
include build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/progress.make

# Include the compile flags for this target's objects.
include build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/flags.make

build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o: build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/flags.make
build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o: _deps/argparse-src/argparse.c
build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o: build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o"
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o -MF CMakeFiles/argparse_shared.dir/argparse.c.o.d -o CMakeFiles/argparse_shared.dir/argparse.c.o -c /Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/argparse-src/argparse.c

build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argparse_shared.dir/argparse.c.i"
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/argparse-src/argparse.c > CMakeFiles/argparse_shared.dir/argparse.c.i

build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argparse_shared.dir/argparse.c.s"
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/argparse-src/argparse.c -o CMakeFiles/argparse_shared.dir/argparse.c.s

# Object files for target argparse_shared
argparse_shared_OBJECTS = \
"CMakeFiles/argparse_shared.dir/argparse.c.o"

# External object files for target argparse_shared
argparse_shared_EXTERNAL_OBJECTS =

build/_deps/argparse-src/libargparse.dylib: build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/argparse.c.o
build/_deps/argparse-src/libargparse.dylib: build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/build.make
build/_deps/argparse-src/libargparse.dylib: build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libargparse.dylib"
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/argparse_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/build: build/_deps/argparse-src/libargparse.dylib
.PHONY : build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/build

build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/clean:
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src && $(CMAKE_COMMAND) -P CMakeFiles/argparse_shared.dir/cmake_clean.cmake
.PHONY : build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/clean

build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/depend:
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rileyfischer/Documents/dev/languages/rfbs /Users/rileyfischer/Documents/dev/languages/rfbs/build/_deps/argparse-src /Users/rileyfischer/Documents/dev/languages/rfbs/build /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src /Users/rileyfischer/Documents/dev/languages/rfbs/build/build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/_deps/argparse-src/CMakeFiles/argparse_shared.dir/depend
