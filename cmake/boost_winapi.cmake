if(NOT TARGET boost_winapi)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_winapi
        GIT_REPOSITORY https://github.com/boostorg/winapi
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_winapi)
    if(NOT boost_winapi_POPULATED)
        FetchContent_Populate(boost_winapi)
    endif()

    add_library(boost_winapi INTERFACE)
    target_include_directories(boost_winapi INTERFACE $<BUILD_INTERFACE:${boost_winapi_SOURCE_DIR}>/include/)
endif()