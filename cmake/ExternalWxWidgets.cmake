include(ExternalProject)

ExternalProject_Add(
        ext_wxwidgets
        GIT_REPOSITORY https://github.com/wxWidgets/wxWidgets.git
        GIT_TAG v3.2.1
        GIT_SHALLOW ON
        TEST_BEFORE_INSTALL OFF
        CMAKE_ARGS
            -DwxBUILD_BENCHMARKS:BOOL=OFF
            -DwxBUILD_DEMOS:BOOL=OFF
            -DwxBUILD_MONOLITHIC:BOOL=OFF
            -DwxBUILD_SAMPLES:BOOL=OFF
            -DwxBUILD_SHARED:BOOL=OFF
            -DwxBUILD_TESTS:BOOL=OFF
            -DwxUSE_GUI:BOOL=ON
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}
)
