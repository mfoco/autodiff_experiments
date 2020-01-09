if(NOT TARGET boost_detail)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_detail
        GIT_REPOSITORY https://github.com/boostorg/detail
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_detail)
    if(NOT boost_detail_POPULATED)
        FetchContent_Populate(boost_detail)
    endif()

    add_library(boost_detail INTERFACE)
    target_include_directories(boost_detail INTERFACE $<BUILD_INTERFACE:${boost_detail_SOURCE_DIR}>/include/)
endif()