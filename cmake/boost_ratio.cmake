if(NOT TARGET boost_ratio)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_ratio
        GIT_REPOSITORY https://github.com/boostorg/ratio
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_ratio)
    if(NOT boost_ratio_POPULATED)
        FetchContent_Populate(boost_ratio)
    endif()

    add_library(boost_ratio INTERFACE)
    target_include_directories(boost_ratio INTERFACE $<BUILD_INTERFACE:${boost_ratio_SOURCE_DIR}>/include/)
endif()