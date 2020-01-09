if(NOT TARGET boost_integer)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_integer
        GIT_REPOSITORY https://github.com/boostorg/integer
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_integer)
    if(NOT boost_integer_POPULATED)
        FetchContent_Populate(boost_integer)
    endif()

    add_library(boost_integer INTERFACE)
    target_include_directories(boost_integer INTERFACE $<BUILD_INTERFACE:${boost_integer_SOURCE_DIR}>/include/)
endif()