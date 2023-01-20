if(NOT DEFINED CMAKE_MINIMUM_REQUIRED_VERSION)
    cmake_minimum_required(VERSION 3.24)
endif()

project(rtp_connect_tools_superbuild)

include(cmake/ExternalSpdlog.cmake)
include(cmake/ExternalFmt.cmake)
include(cmake/ExternalTomlPlusPlus.cmake)
include(cmake/ExternalBoost.cmake)
include(cmake/ExternalCatch2.cmake)
include(cmake/ExternalWxWidgets.cmake)
include(cmake/ExternalRtpConnectTools.cmake)
