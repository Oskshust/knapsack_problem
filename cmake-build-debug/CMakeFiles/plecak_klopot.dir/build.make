# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Admin\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.7717.62\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Admin\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\203.7717.62\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\studia\sem2\Algorithms&DS\plecak_klopot"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/plecak_klopot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/plecak_klopot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/plecak_klopot.dir/flags.make

CMakeFiles/plecak_klopot.dir/main.cpp.obj: CMakeFiles/plecak_klopot.dir/flags.make
CMakeFiles/plecak_klopot.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/plecak_klopot.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\plecak_klopot.dir\main.cpp.obj -c "D:\studia\sem2\Algorithms&DS\plecak_klopot\main.cpp"

CMakeFiles/plecak_klopot.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plecak_klopot.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\studia\sem2\Algorithms&DS\plecak_klopot\main.cpp" > CMakeFiles\plecak_klopot.dir\main.cpp.i

CMakeFiles/plecak_klopot.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plecak_klopot.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\studia\sem2\Algorithms&DS\plecak_klopot\main.cpp" -o CMakeFiles\plecak_klopot.dir\main.cpp.s

# Object files for target plecak_klopot
plecak_klopot_OBJECTS = \
"CMakeFiles/plecak_klopot.dir/main.cpp.obj"

# External object files for target plecak_klopot
plecak_klopot_EXTERNAL_OBJECTS =

plecak_klopot.exe: CMakeFiles/plecak_klopot.dir/main.cpp.obj
plecak_klopot.exe: CMakeFiles/plecak_klopot.dir/build.make
plecak_klopot.exe: CMakeFiles/plecak_klopot.dir/linklibs.rsp
plecak_klopot.exe: CMakeFiles/plecak_klopot.dir/objects1.rsp
plecak_klopot.exe: CMakeFiles/plecak_klopot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable plecak_klopot.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\plecak_klopot.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/plecak_klopot.dir/build: plecak_klopot.exe

.PHONY : CMakeFiles/plecak_klopot.dir/build

CMakeFiles/plecak_klopot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\plecak_klopot.dir\cmake_clean.cmake
.PHONY : CMakeFiles/plecak_klopot.dir/clean

CMakeFiles/plecak_klopot.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\studia\sem2\Algorithms&DS\plecak_klopot" "D:\studia\sem2\Algorithms&DS\plecak_klopot" "D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug" "D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug" "D:\studia\sem2\Algorithms&DS\plecak_klopot\cmake-build-debug\CMakeFiles\plecak_klopot.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/plecak_klopot.dir/depend

