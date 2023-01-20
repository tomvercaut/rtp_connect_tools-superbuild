include(ExternalProject)

ExternalProject_Add(
        ext_catch2
        GIT_REPOSITORY https://github.com/catchorg/Catch2.git
        GIT_TAG v3.1.0
        GIT_SHALLOW ON
        TEST_BEFORE_INSTALL ON
        CMAKE_ARGS
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCATCH_INSTALL_DOCS:BOOL=OFF
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}

)