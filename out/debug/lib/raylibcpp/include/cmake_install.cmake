# Install script for directory: C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/clark")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/msys64/clang64/bin/llvm-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/AudioDevice.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/AudioStream.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/AudioStreamUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/AutomationEventList.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/BoundingBox.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Camera2D.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Camera3D.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Color.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/FileData.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/FileText.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Font.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/FontUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Functions.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Gamepad.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Image.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Keyboard.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Material.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/MaterialUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Matrix.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Mesh.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/MeshUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Model.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/ModelUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/ModelAnimation.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Mouse.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Music.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/MusicUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Quaternion.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Ray.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/RayCollision.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/RaylibException.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/raylib-cpp-utils.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/raylib-cpp.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/raylib.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/raymath.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Rectangle.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/RenderTexture.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/RenderTextureUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/ShaderUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Shader.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Sound.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/SoundUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Text.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Texture.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/TextureUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Touch.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Vector2.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Vector3.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Vector4.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/VrStereoConfig.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Wave.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/WaveUnmanaged.hpp"
    "C:/Users/jghig/projects/cxx/clark/lib/raylibcpp/include/Window.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp/raylib_cppTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp/raylib_cppTargets.cmake"
         "C:/Users/jghig/projects/cxx/clark/out/debug/lib/raylibcpp/include/CMakeFiles/Export/50f2504e7adaa114529760fa87155636/raylib_cppTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp/raylib_cppTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp/raylib_cppTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp" TYPE FILE FILES "C:/Users/jghig/projects/cxx/clark/out/debug/lib/raylibcpp/include/CMakeFiles/Export/50f2504e7adaa114529760fa87155636/raylib_cppTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/raylib_cpp" TYPE FILE FILES
    "C:/Users/jghig/projects/cxx/clark/out/debug/lib/raylibcpp/cmake/raylib_cppConfig.cmake"
    "C:/Users/jghig/projects/cxx/clark/out/debug/lib/raylibcpp/cmake/raylib_cppConfigVersion.cmake"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/jghig/projects/cxx/clark/out/debug/lib/raylibcpp/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
