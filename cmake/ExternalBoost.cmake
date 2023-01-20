include(ExternalProject)

if (WIN32)
    set(boost_bootstrap "bootstrap.bat")
    set(boost_b2 "b2.exe")
else()
    set(boost_bootstrap "bootstrap.sh")
    set(boost_b2 "b2")
endif ()

if(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    set(boost_toolset "msvc")
elseif(CMAKE_CXX_COMPILER_ID EQUAL "GNU")
    set(boost_toolset "gcc")
elseif(CMAKE_CXX_COMPILER_ID EQUAL "Clang")
    set(boost_toolset "clang")
else()
    unset(boost_toolset)
endif()

ExternalProject_Add(
        ext_boost
        GIT_REPOSITORY https://github.com/boostorg/boost.git
        GIT_TAG boost-1.81.0
        GIT_SHALLOW ON
        BUILD_IN_SOURCE 1
        CONFIGURE_COMMAND ./${boost_bootstrap} --prefix=${CMAKE_INSTALL_PREFIX} --without-python
        BUILD_COMMAND ./${boost_b2}
            --build-type=complete
            --prefix=${CMAKE_INSTALL_PREFIX}
            toolset=${boost_toolset}
            install
        INSTALL_COMMAND ""
)