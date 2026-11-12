cmake_minimum_required(VERSION 4.4.4)
project(clark CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(clark "src/main.cc")

#
#

set(BUILD_RAYLIB_CPP_MODULES ON)
add_subdirectory("lib/raylib")
add_subdirectory("lib/raylibcpp")

#

add_subdirectory("lib/asiostandalone")

#

add_subdirectory("lib/result")

#

add_subdirectory("src/client")
target_link_libraries(clark PRIVATE client)

add_subdirectory("src/server")
target_link_libraries(clark PRIVATE server)

add_subdirectory("src/shared")
target_link_libraries(clark PRIVATE shared)
target_link_libraries(client PRIVATE shared)
target_link_libraries(server PRIVATE shared)