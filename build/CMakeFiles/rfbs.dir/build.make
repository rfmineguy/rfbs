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
include CMakeFiles/rfbs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rfbs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rfbs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rfbs.dir/flags.make

CMakeFiles/rfbs.dir/src/main.c.o: CMakeFiles/rfbs.dir/flags.make
CMakeFiles/rfbs.dir/src/main.c.o: /Users/rileyfischer/Documents/dev/languages/rfbs/src/main.c
CMakeFiles/rfbs.dir/src/main.c.o: CMakeFiles/rfbs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rfbs.dir/src/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rfbs.dir/src/main.c.o -MF CMakeFiles/rfbs.dir/src/main.c.o.d -o CMakeFiles/rfbs.dir/src/main.c.o -c /Users/rileyfischer/Documents/dev/languages/rfbs/src/main.c

CMakeFiles/rfbs.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rfbs.dir/src/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rileyfischer/Documents/dev/languages/rfbs/src/main.c > CMakeFiles/rfbs.dir/src/main.c.i

CMakeFiles/rfbs.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rfbs.dir/src/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rileyfischer/Documents/dev/languages/rfbs/src/main.c -o CMakeFiles/rfbs.dir/src/main.c.s

CMakeFiles/rfbs.dir/src/toml_processing.c.o: CMakeFiles/rfbs.dir/flags.make
CMakeFiles/rfbs.dir/src/toml_processing.c.o: /Users/rileyfischer/Documents/dev/languages/rfbs/src/toml_processing.c
CMakeFiles/rfbs.dir/src/toml_processing.c.o: CMakeFiles/rfbs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rfbs.dir/src/toml_processing.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rfbs.dir/src/toml_processing.c.o -MF CMakeFiles/rfbs.dir/src/toml_processing.c.o.d -o CMakeFiles/rfbs.dir/src/toml_processing.c.o -c /Users/rileyfischer/Documents/dev/languages/rfbs/src/toml_processing.c

CMakeFiles/rfbs.dir/src/toml_processing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rfbs.dir/src/toml_processing.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rileyfischer/Documents/dev/languages/rfbs/src/toml_processing.c > CMakeFiles/rfbs.dir/src/toml_processing.c.i

CMakeFiles/rfbs.dir/src/toml_processing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rfbs.dir/src/toml_processing.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rileyfischer/Documents/dev/languages/rfbs/src/toml_processing.c -o CMakeFiles/rfbs.dir/src/toml_processing.c.s

CMakeFiles/rfbs.dir/src/file_change.c.o: CMakeFiles/rfbs.dir/flags.make
CMakeFiles/rfbs.dir/src/file_change.c.o: /Users/rileyfischer/Documents/dev/languages/rfbs/src/file_change.c
CMakeFiles/rfbs.dir/src/file_change.c.o: CMakeFiles/rfbs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/rfbs.dir/src/file_change.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rfbs.dir/src/file_change.c.o -MF CMakeFiles/rfbs.dir/src/file_change.c.o.d -o CMakeFiles/rfbs.dir/src/file_change.c.o -c /Users/rileyfischer/Documents/dev/languages/rfbs/src/file_change.c

CMakeFiles/rfbs.dir/src/file_change.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rfbs.dir/src/file_change.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rileyfischer/Documents/dev/languages/rfbs/src/file_change.c > CMakeFiles/rfbs.dir/src/file_change.c.i

CMakeFiles/rfbs.dir/src/file_change.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rfbs.dir/src/file_change.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rileyfischer/Documents/dev/languages/rfbs/src/file_change.c -o CMakeFiles/rfbs.dir/src/file_change.c.s

# Object files for target rfbs
rfbs_OBJECTS = \
"CMakeFiles/rfbs.dir/src/main.c.o" \
"CMakeFiles/rfbs.dir/src/toml_processing.c.o" \
"CMakeFiles/rfbs.dir/src/file_change.c.o"

# External object files for target rfbs
rfbs_EXTERNAL_OBJECTS =

rfbs: CMakeFiles/rfbs.dir/src/main.c.o
rfbs: CMakeFiles/rfbs.dir/src/toml_processing.c.o
rfbs: CMakeFiles/rfbs.dir/src/file_change.c.o
rfbs: CMakeFiles/rfbs.dir/build.make
rfbs: _deps/argparse-build/libargparse.a
rfbs: build/_deps/sha1-src/libsha1.a
rfbs: _deps/libtoml-build/libtoml.a
rfbs: CMakeFiles/rfbs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable rfbs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rfbs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rfbs.dir/build: rfbs
.PHONY : CMakeFiles/rfbs.dir/build

CMakeFiles/rfbs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rfbs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rfbs.dir/clean

CMakeFiles/rfbs.dir/depend:
	cd /Users/rileyfischer/Documents/dev/languages/rfbs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rileyfischer/Documents/dev/languages/rfbs /Users/rileyfischer/Documents/dev/languages/rfbs /Users/rileyfischer/Documents/dev/languages/rfbs/build /Users/rileyfischer/Documents/dev/languages/rfbs/build /Users/rileyfischer/Documents/dev/languages/rfbs/build/CMakeFiles/rfbs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rfbs.dir/depend

