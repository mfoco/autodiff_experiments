if(NOT TARGET boost_throw_exception)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_throw_exception
        GIT_REPOSITORY https://github.com/boostorg/throw_exception
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_throw_exception)
    if(NOT boost_throw_exception_POPULATED)
        FetchContent_Populate(boost_throw_exception)
    endif()

    add_library(boost_throw_exception INTERFACE)
    target_include_directories(boost_throw_exception INTERFACE $<BUILD_INTERFACE:${boost_throw_exception_SOURCE_DIR}>/include/)
endif()