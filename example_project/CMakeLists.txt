include_directories(include)


##################################################
add_library( libarithmetic STATIC
    src/arithmetic.cpp
)

add_executable( test_libarithmetic
    test/test_arithmetic.cpp
)

target_link_libraries( test_libarithmetic
    libarithmetic
    GTest::gtest        # This target requires CMake version 3.20
    GTest::gtest_main   # This target requires CMake version 3.20
    GTest::gmock        # This target requires CMake version 3.23
    GTest::gmock_main   # This target requires CMake version 3.23
)
if (UNIX)
    target_link_libraries( test_libarithmetic pthread )
endif ()

add_test(
    NAME test_libarithmetic
    COMMAND test_libarithmetic
)


##################################################
add_library( libTime STATIC
    src/Time.cpp
)

add_executable( test_libTime
    test/test_Time.cpp
)

target_link_libraries( test_libTime
    libTime
    GTest::gtest        # This target requires CMake version 3.20
    GTest::gtest_main   # This target requires CMake version 3.20
    GTest::gmock        # This target requires CMake version 3.23
    GTest::gmock_main   # This target requires CMake version 3.23
)
if (UNIX)
    target_link_libraries( test_libTime pthread )
endif ()

add_test(
    NAME test_libTime
    COMMAND test_libTime
)
