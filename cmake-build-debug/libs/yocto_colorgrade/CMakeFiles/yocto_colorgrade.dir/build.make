# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\simon\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5284.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\simon\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5284.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\simon\Desktop\01_image_out\out

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

# Include any dependencies generated for this target.
include libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\depend.make
# Include the progress variables for this target.
include libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\progress.make

# Include the compile flags for this target's objects.
include libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\flags.make

libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.obj: libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\flags.make
libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.obj: ..\libs\yocto_colorgrade\yocto_colorgrade.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/yocto_colorgrade/CMakeFiles/yocto_colorgrade.dir/yocto_colorgrade.cpp.obj"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.obj /FdCMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.pdb /FS -c C:\Users\simon\Desktop\01_image_out\out\libs\yocto_colorgrade\yocto_colorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yocto_colorgrade.dir/yocto_colorgrade.cpp.i"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\simon\Desktop\01_image_out\out\libs\yocto_colorgrade\yocto_colorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yocto_colorgrade.dir/yocto_colorgrade.cpp.s"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.s /c C:\Users\simon\Desktop\01_image_out\out\libs\yocto_colorgrade\yocto_colorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

# Object files for target yocto_colorgrade
yocto_colorgrade_OBJECTS = \
"CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.obj"

# External object files for target yocto_colorgrade
yocto_colorgrade_EXTERNAL_OBJECTS =

..\bin\debug\yocto_colorgrade.lib: libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\yocto_colorgrade.cpp.obj
..\bin\debug\yocto_colorgrade.lib: libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\build.make
..\bin\debug\yocto_colorgrade.lib: libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ..\..\..\bin\debug\yocto_colorgrade.lib"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	$(CMAKE_COMMAND) -P CMakeFiles\yocto_colorgrade.dir\cmake_clean_target.cmake
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:..\..\..\bin\debug\yocto_colorgrade.lib @CMakeFiles\yocto_colorgrade.dir\objects1.rsp 
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

# Rule to build all files generated by this target.
libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\build: ..\bin\debug\yocto_colorgrade.lib
.PHONY : libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\build

libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\clean:
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade
	$(CMAKE_COMMAND) -P CMakeFiles\yocto_colorgrade.dir\cmake_clean.cmake
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug
.PHONY : libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\clean

libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\simon\Desktop\01_image_out\out C:\Users\simon\Desktop\01_image_out\out\libs\yocto_colorgrade C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs\yocto_colorgrade\CMakeFiles\yocto_colorgrade.dir\depend

