include(ExternalProject)

ExternalProject_Add(
        ext_tomlplusplus
        GIT_REPOSITORY https://github.com/marzer/tomlplusplus.git
        GIT_TAG v3.2.0
        GIT_SHALLOW ON
        TEST_BEFORE_INSTALL OFF
        CMAKE_ARGS
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}

)