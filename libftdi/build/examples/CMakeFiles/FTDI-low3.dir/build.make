# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/testcode/FTDI/libftdi/libftdi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/testcode/FTDI/libftdi/libftdi/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/FTDI-low3.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/FTDI-low3.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/FTDI-low3.dir/flags.make

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o: examples/CMakeFiles/FTDI-low3.dir/flags.make
examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o: ../examples/FTDI-low3.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/testcode/FTDI/libftdi/libftdi/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o   -c /home/mark/testcode/FTDI/libftdi/libftdi/examples/FTDI-low3.c

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/FTDI-low3.dir/FTDI-low3.c.i"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mark/testcode/FTDI/libftdi/libftdi/examples/FTDI-low3.c > CMakeFiles/FTDI-low3.dir/FTDI-low3.c.i

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/FTDI-low3.dir/FTDI-low3.c.s"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mark/testcode/FTDI/libftdi/libftdi/examples/FTDI-low3.c -o CMakeFiles/FTDI-low3.dir/FTDI-low3.c.s

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.requires:
.PHONY : examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.requires

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.provides: examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.requires
	$(MAKE) -f examples/CMakeFiles/FTDI-low3.dir/build.make examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.provides.build
.PHONY : examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.provides

examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.provides.build: examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o

# Object files for target FTDI-low3
FTDI__low3_OBJECTS = \
"CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o"

# External object files for target FTDI-low3
FTDI__low3_EXTERNAL_OBJECTS =

examples/FTDI-low3: examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o
examples/FTDI-low3: examples/CMakeFiles/FTDI-low3.dir/build.make
examples/FTDI-low3: src/libftdi1.so.2.2.0
examples/FTDI-low3: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
examples/FTDI-low3: examples/CMakeFiles/FTDI-low3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable FTDI-low3"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FTDI-low3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/FTDI-low3.dir/build: examples/FTDI-low3
.PHONY : examples/CMakeFiles/FTDI-low3.dir/build

examples/CMakeFiles/FTDI-low3.dir/requires: examples/CMakeFiles/FTDI-low3.dir/FTDI-low3.c.o.requires
.PHONY : examples/CMakeFiles/FTDI-low3.dir/requires

examples/CMakeFiles/FTDI-low3.dir/clean:
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/FTDI-low3.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/FTDI-low3.dir/clean

examples/CMakeFiles/FTDI-low3.dir/depend:
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/testcode/FTDI/libftdi/libftdi /home/mark/testcode/FTDI/libftdi/libftdi/examples /home/mark/testcode/FTDI/libftdi/libftdi/build /home/mark/testcode/FTDI/libftdi/libftdi/build/examples /home/mark/testcode/FTDI/libftdi/libftdi/build/examples/CMakeFiles/FTDI-low3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/FTDI-low3.dir/depend

