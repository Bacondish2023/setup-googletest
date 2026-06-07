# To avoid error "Compatibility with CMake < 3.5 has been removed from CMake." on CMake v4.x
cmake_minimum_required(VERSION 3.5)

# Use CMAKE_MSVC_RUNTIME_LIBRARY variable
# and MSVC_RUNTIME_LIBRARY target property to select the MSVC runtime library
cmake_policy(SET CMP0091 NEW)

project(setup_googletest_exmaple_project)

# CTest
enable_testing()

# GoogleTest
find_package(GTest REQUIRED)

# lint
add_custom_target(lint
    COMMAND cmake -E echo Nothing to do about lint.
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

##################################################
# platform settings
##################################################
if (UNIX)
    # nothing to do
elseif (WIN32)
    add_definitions("/source-charset:utf-8")

    # Google Test requires the static MSVC runtime library
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

else ()
    # nothing to do
endif ()

##################################################
# build
##################################################
add_subdirectory(example_project)
