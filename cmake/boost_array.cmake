if(NOT TARGET boost_array)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_array
        GIT_REPOSITORY https://github.com/boostorg/array
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_array)
    if(NOT boost_array_POPULATED)
        FetchContent_Populate(boost_array)
    endif()

    add_library(boost_array INTERFACE)
    target_include_directories(boost_array INTERFACE $<BUILD_INTERFACE:${boost_array_SOURCE_DIR}>/include/)
endif()