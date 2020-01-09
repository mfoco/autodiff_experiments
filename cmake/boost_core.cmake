if(NOT TARGET boost_core)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_core
        GIT_REPOSITORY https://github.com/boostorg/core
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_core)
    if(NOT boost_core_POPULATED)
        FetchContent_Populate(boost_core)
    endif()

    add_library(boost_core INTERFACE)
    target_include_directories(boost_core INTERFACE $<BUILD_INTERFACE:${boost_core_SOURCE_DIR}>/include/)
endif()