add_library(client_eng STATIC)

file(GLOB_RECURSE MODULE_FILES
    CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/*.ixx"
)

target_sources(client_eng
    PUBLIC
        FILE_SET CXX_MODULES
        BASE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}
        FILES ${MODULE_FILES}
)

target_link_libraries(client_eng PRIVATE raylib_cpp_modules)