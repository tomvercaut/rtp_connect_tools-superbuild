include(ExternalProject)

ExternalProject_Add(
    ext_rtp_connect_tools
    GIT_REPOSITORY https://github.com/tomvercaut/rtp_connect_tools.git
    GIT_TAG main
    DEPENDS ext_catch2 ext_cli11 ext_spdlog ext_fmt ext_tomlplusplus
    CMAKE_ARGS
            -Dspdlog_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/spdlog
            -Dfmt_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt
            -Dtomlplusplus_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/tomlplusplus
            -DCatch2_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/Catch2
            -DCLI11_DIR:PATH=${CMAKE_INSTALL_PREFIX}/share/cmake/CLI11
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_INSTALL_PREFIX}
)
#   DEPENDS ext_boost ext_wxwidgets
#            -DBoost_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/Boost-1.81.0
#            -DwxWidgets_ROOT_DIR:PATH=${CMAKE_INSTALL_PREFIX}/lib/cmake/wxWidgets
