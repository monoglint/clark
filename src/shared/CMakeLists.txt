add_library(shared STATIC)

file(GLOB_RECURSE MODULE_FILES
    CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/*.ixx"
)

target_sources(shared
    PUBLIC
        FILE_SET CXX_MODULES
        BASE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}
        FILES ${MODULE_FILES}
)

target_link_libraries(shared PRIVATE boost_asio)