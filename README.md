# Setup GoogleTest

A GitHub Action which sets up your workflow with specified version of GoogleTest.

Note:  
This project is a third-party GitHub Action and is not affiliated with the GoogleTest project.

Intended user
* The person who wants to test C/C++ project with the GoogleTest on the GitHub Actions workflow.
  And uses CMake.

## Usage

#### CMakeLists.txt

This action supports `FindGTest`,
which searches for an installed GoogleTest package and provides CMake targets.

If you are not familiar with `FindGTest`,
see [CMake: FindGTest](https://cmake.org/cmake/help/latest/module/FindGTest.html) .

```cmake
find_package(GTest REQUIRED)

add_executable(test_foo test_foo.c)
target_link_libraries(
    test_foo
    PRIVATE
        tested_library
        GTest::gtest
        GTest::gtest_main
)
```

Call `find_package(GTest REQUIRED)` before defining targets
such as `add_executable()` or `add_library()`.
Then link the required GoogleTest targets,
such as `GTest::gtest` and `GTest::gtest_main`, to your executable target.

#### Workflow

###### Basic

```yaml
steps:
  - uses: Bacondish2023/setup-googletest@v1
    with:
      tag: v1.14.0
  # And build steps
```

Inputs

|Item|Description|Mandatory?|Default|
|:---|:---|:---|:---|
|tag|Tag or branch name of GoogleTest.|No|main|
|build-type|Build type. One of {Debug, Release, RelWithDebInfo, MinSizeRel}.<br>Keep same with your project|No|Release|
|loglevel|Logging level. One of {OFF, CRITICAL, ERROR, WARNING, INFO, DEBUG}.|No|INFO|

###### Windows Specific

```yaml
steps:
  - uses: ilammy/msvc-dev-cmd@v1
  - uses: Bacondish2023/setup-googletest@v1
    with:
      tag: v1.14.0
  # And build steps
```

On Windows platform, this action requires MSVC.
[ilammy/msvc-dev-cmd](https://github.com/ilammy/msvc-dev-cmd) is recommended,
because it is used for example project on this repository and tested.


## Prerequisites

#### Supported Platform

|Platform|Shell|
|:---|:---|
|Linux|Bash|
|Windows|Power Shell|
|MacOS|Bash|


## License

This project is free and open-source software licensed under the **MIT License** .  
