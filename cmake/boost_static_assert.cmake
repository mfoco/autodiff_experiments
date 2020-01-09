if(NOT TARGET boost_static_assert)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_static_assert
        GIT_REPOSITORY https://github.com/boostorg/static_assert
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_static_assert)
    if(NOT boost_static_assert_POPULATED)
        FetchContent_Populate(boost_static_assert)
    endif()

    add_library(boost_static_assert INTERFACE)
    target_include_directories(boost_static_assert INTERFACE $<BUILD_INTERFACE:${boost_static_assert_SOURCE_DIR}>/include/)
endif()