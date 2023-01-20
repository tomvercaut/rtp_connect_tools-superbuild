include(ExternalProject)

ExternalProject_Add(
        ext_fmt
        GIT_REPOSITORY https://github.com/fmtlib/fmt.git
        GIT_TAG 9.0.0
        GIT_SHALLOW ON
        TEST_BEFORE_INSTALL OFF
        CMAKE_ARGS
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}

)