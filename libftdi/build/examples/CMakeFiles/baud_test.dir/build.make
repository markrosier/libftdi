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
include examples/CMakeFiles/baud_test.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/baud_test.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/baud_test.dir/flags.make

examples/CMakeFiles/baud_test.dir/baud_test.c.o: examples/CMakeFiles/baud_test.dir/flags.make
examples/CMakeFiles/baud_test.dir/baud_test.c.o: ../examples/baud_test.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/testcode/FTDI/libftdi/libftdi/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/baud_test.dir/baud_test.c.o"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/baud_test.dir/baud_test.c.o   -c /home/mark/testcode/FTDI/libftdi/libftdi/examples/baud_test.c

examples/CMakeFiles/baud_test.dir/baud_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/baud_test.dir/baud_test.c.i"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mark/testcode/FTDI/libftdi/libftdi/examples/baud_test.c > CMakeFiles/baud_test.dir/baud_test.c.i

examples/CMakeFiles/baud_test.dir/baud_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/baud_test.dir/baud_test.c.s"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mark/testcode/FTDI/libftdi/libftdi/examples/baud_test.c -o CMakeFiles/baud_test.dir/baud_test.c.s

examples/CMakeFiles/baud_test.dir/baud_test.c.o.requires:
.PHONY : examples/CMakeFiles/baud_test.dir/baud_test.c.o.requires

examples/CMakeFiles/baud_test.dir/baud_test.c.o.provides: examples/CMakeFiles/baud_test.dir/baud_test.c.o.requires
	$(MAKE) -f examples/CMakeFiles/baud_test.dir/build.make examples/CMakeFiles/baud_test.dir/baud_test.c.o.provides.build
.PHONY : examples/CMakeFiles/baud_test.dir/baud_test.c.o.provides

examples/CMakeFiles/baud_test.dir/baud_test.c.o.provides.build: examples/CMakeFiles/baud_test.dir/baud_test.c.o

# Object files for target baud_test
baud_test_OBJECTS = \
"CMakeFiles/baud_test.dir/baud_test.c.o"

# External object files for target baud_test
baud_test_EXTERNAL_OBJECTS =

examples/baud_test: examples/CMakeFiles/baud_test.dir/baud_test.c.o
examples/baud_test: examples/CMakeFiles/baud_test.dir/build.make
examples/baud_test: src/libftdi1.so.2.2.0
examples/baud_test: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
examples/baud_test: examples/CMakeFiles/baud_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable baud_test"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/baud_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/baud_test.dir/build: examples/baud_test
.PHONY : examples/CMakeFiles/baud_test.dir/build

examples/CMakeFiles/baud_test.dir/requires: examples/CMakeFiles/baud_test.dir/baud_test.c.o.requires
.PHONY : examples/CMakeFiles/baud_test.dir/requires

examples/CMakeFiles/baud_test.dir/clean:
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/baud_test.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/baud_test.dir/clean

examples/CMakeFiles/baud_test.dir/depend:
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/testcode/FTDI/libftdi/libftdi /home/mark/testcode/FTDI/libftdi/libftdi/examples /home/mark/testcode/FTDI/libftdi/libftdi/build /home/mark/testcode/FTDI/libftdi/libftdi/build/examples /home/mark/testcode/FTDI/libftdi/libftdi/build/examples/CMakeFiles/baud_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/baud_test.dir/depend

