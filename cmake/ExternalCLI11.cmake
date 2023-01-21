include(ExternalProject)

ExternalProject_Add(
        ext_cli11
        GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
        GIT_TAG v2.3.2
        GIT_SHALLOW ON
        TEST_BEFORE_INSTALL OFF
        CMAKE_ARGS
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}
            -DCLI11_BUILD_DOCS:BOOL=ON
            -DCLI11_BUILD_TESTS:BOOL=OFF
            -DCLI11_SINGLE_FILE_TESTS:BOOL=OFF
            -DCLI11_BUILD_EXAMPLES:BOOL=OFF
            -DCLI11_SINGLE_FILE:BOOL=OFF
            -DCLI11_INSTALL:BOOL=ON
)