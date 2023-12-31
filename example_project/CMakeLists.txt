include_directories(include)


##################################################
add_library( libarithmetic STATIC
    src/arithmetic.cpp
)

add_executable( test_libarithmetic
    test/test_arithmetic.cpp
)

target_include_directories( test_libarithmetic
    PRIVATE
        ${GTEST_INCLUDE_DIRS}
)

target_link_libraries( test_libarithmetic
    libarithmetic
    ${GTEST_BOTH_LIBRARIES}
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

target_include_directories( test_libTime
    PRIVATE
        ${GTEST_INCLUDE_DIRS}
)

target_link_libraries( test_libTime
    libTime
    ${GTEST_BOTH_LIBRARIES}
)
if (UNIX)
    target_link_libraries( test_libTime pthread )
endif ()

add_test(
    NAME test_libTime
    COMMAND test_libTime
)
