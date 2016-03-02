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
include python/CMakeFiles/_ftdi1.dir/depend.make

# Include the progress variables for this target.
include python/CMakeFiles/_ftdi1.dir/progress.make

# Include the compile flags for this target's objects.
include python/CMakeFiles/_ftdi1.dir/flags.make

python/ftdi1PYTHON_wrap.c: ../python/ftdi1.i
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/testcode/FTDI/libftdi/libftdi/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && /usr/bin/cmake -E make_directory /home/mark/testcode/FTDI/libftdi/libftdi/build/python
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && /usr/bin/swig2.0 -python -DDOXYGEN=YES -outdir /home/mark/testcode/FTDI/libftdi/libftdi/build/python -I/home/mark/testcode/FTDI/libftdi/libftdi/src -I/usr/include/libusb-1.0 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -o /home/mark/testcode/FTDI/libftdi/libftdi/build/python/ftdi1PYTHON_wrap.c /home/mark/testcode/FTDI/libftdi/libftdi/python/ftdi1.i

python/ftdi1.py: python/ftdi1PYTHON_wrap.c

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o: python/CMakeFiles/_ftdi1.dir/flags.make
python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o: python/ftdi1PYTHON_wrap.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/testcode/FTDI/libftdi/libftdi/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o   -c /home/mark/testcode/FTDI/libftdi/libftdi/build/python/ftdi1PYTHON_wrap.c

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.i"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mark/testcode/FTDI/libftdi/libftdi/build/python/ftdi1PYTHON_wrap.c > CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.i

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.s"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mark/testcode/FTDI/libftdi/libftdi/build/python/ftdi1PYTHON_wrap.c -o CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.s

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.requires:
.PHONY : python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.requires

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.provides: python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.requires
	$(MAKE) -f python/CMakeFiles/_ftdi1.dir/build.make python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.provides.build
.PHONY : python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.provides

python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.provides.build: python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o

# Object files for target _ftdi1
_ftdi1_OBJECTS = \
"CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o"

# External object files for target _ftdi1
_ftdi1_EXTERNAL_OBJECTS =

python/_ftdi1.so: python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o
python/_ftdi1.so: python/CMakeFiles/_ftdi1.dir/build.make
python/_ftdi1.so: src/libftdi1.so.2.2.0
python/_ftdi1.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
python/_ftdi1.so: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
python/_ftdi1.so: python/CMakeFiles/_ftdi1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared module _ftdi1.so"
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_ftdi1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
python/CMakeFiles/_ftdi1.dir/build: python/_ftdi1.so
.PHONY : python/CMakeFiles/_ftdi1.dir/build

python/CMakeFiles/_ftdi1.dir/requires: python/CMakeFiles/_ftdi1.dir/ftdi1PYTHON_wrap.c.o.requires
.PHONY : python/CMakeFiles/_ftdi1.dir/requires

python/CMakeFiles/_ftdi1.dir/clean:
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build/python && $(CMAKE_COMMAND) -P CMakeFiles/_ftdi1.dir/cmake_clean.cmake
.PHONY : python/CMakeFiles/_ftdi1.dir/clean

python/CMakeFiles/_ftdi1.dir/depend: python/ftdi1PYTHON_wrap.c
python/CMakeFiles/_ftdi1.dir/depend: python/ftdi1.py
	cd /home/mark/testcode/FTDI/libftdi/libftdi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/testcode/FTDI/libftdi/libftdi /home/mark/testcode/FTDI/libftdi/libftdi/python /home/mark/testcode/FTDI/libftdi/libftdi/build /home/mark/testcode/FTDI/libftdi/libftdi/build/python /home/mark/testcode/FTDI/libftdi/libftdi/build/python/CMakeFiles/_ftdi1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : python/CMakeFiles/_ftdi1.dir/depend

