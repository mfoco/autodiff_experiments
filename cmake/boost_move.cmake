if(NOT TARGET boost_move)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_move
        GIT_REPOSITORY https://github.com/boostorg/move
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_move)
    if(NOT boost_move_POPULATED)
        FetchContent_Populate(boost_move)
    endif()

    add_library(boost_move INTERFACE)
    target_include_directories(boost_move INTERFACE $<BUILD_INTERFACE:${boost_move_SOURCE_DIR}>/include/)
endif()