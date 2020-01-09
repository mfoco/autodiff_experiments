if(NOT TARGET boost_assert)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_assert
        GIT_REPOSITORY https://github.com/boostorg/assert
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_assert)
    if(NOT boost_assert_POPULATED)
        FetchContent_Populate(boost_assert)
    endif()

    add_library(boost_assert INTERFACE)
    target_include_directories(boost_assert INTERFACE $<BUILD_INTERFACE:${boost_assert_SOURCE_DIR}>/include/)
endif()