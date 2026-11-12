add_library(client STATIC)

target_sources(client
    PUBLIC
        FILE_SET CXX_MODULES
        BASE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}
        FILES 
            client_main.ixx
)
target_link_libraries(client PRIVATE raylib_cpp_modules)

add_subdirectory(eng)
target_link_libraries(client PUBLIC client_eng)