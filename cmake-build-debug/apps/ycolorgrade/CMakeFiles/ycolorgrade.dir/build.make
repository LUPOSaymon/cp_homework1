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
include apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\depend.make
# Include the progress variables for this target.
include apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\progress.make

# Include the compile flags for this target's objects.
include apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\flags.make

apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.obj: apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\flags.make
apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.obj: ..\apps\ycolorgrade\ycolorgrade.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/ycolorgrade/CMakeFiles/ycolorgrade.dir/ycolorgrade.cpp.obj"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.obj /FdCMakeFiles\ycolorgrade.dir\ /FS -c C:\Users\simon\Desktop\01_image_out\out\apps\ycolorgrade\ycolorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ycolorgrade.dir/ycolorgrade.cpp.i"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\simon\Desktop\01_image_out\out\apps\ycolorgrade\ycolorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ycolorgrade.dir/ycolorgrade.cpp.s"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.s /c C:\Users\simon\Desktop\01_image_out\out\apps\ycolorgrade\ycolorgrade.cpp
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

# Object files for target ycolorgrade
ycolorgrade_OBJECTS = \
"CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.obj"

# External object files for target ycolorgrade
ycolorgrade_EXTERNAL_OBJECTS =

..\bin\debug\ycolorgrade.exe: apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\ycolorgrade.cpp.obj
..\bin\debug\ycolorgrade.exe: apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\build.make
..\bin\debug\ycolorgrade.exe: ..\bin\debug\yocto.lib
..\bin\debug\ycolorgrade.exe: ..\bin\debug\yocto_colorgrade.lib
..\bin\debug\ycolorgrade.exe: ..\bin\debug\yocto_gui.lib
..\bin\debug\ycolorgrade.exe: ..\bin\debug\yocto.lib
..\bin\debug\ycolorgrade.exe: ..\bin\debug\glfw3.lib
..\bin\debug\ycolorgrade.exe: apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\..\..\bin\debug\ycolorgrade.exe"
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade
	C:\Users\simon\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5284.51\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\ycolorgrade.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\ycolorgrade.dir\objects1.rsp @<<
 /out:..\..\..\bin\debug\ycolorgrade.exe /implib:..\..\..\bin\debug\ycolorgrade.lib /pdb:C:\Users\simon\Desktop\01_image_out\out\bin\debug\ycolorgrade.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  ..\..\..\bin\debug\yocto.lib ..\..\..\bin\debug\yocto_colorgrade.lib ..\..\..\bin\debug\yocto_gui.lib ..\..\..\bin\debug\yocto.lib ..\..\..\bin\debug\glfw3.lib opengl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug

# Rule to build all files generated by this target.
apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\build: ..\bin\debug\ycolorgrade.exe
.PHONY : apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\build

apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\clean:
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade
	$(CMAKE_COMMAND) -P CMakeFiles\ycolorgrade.dir\cmake_clean.cmake
	cd C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug
.PHONY : apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\clean

apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\simon\Desktop\01_image_out\out C:\Users\simon\Desktop\01_image_out\out\apps\ycolorgrade C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade C:\Users\simon\Desktop\01_image_out\out\cmake-build-debug\apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : apps\ycolorgrade\CMakeFiles\ycolorgrade.dir\depend
