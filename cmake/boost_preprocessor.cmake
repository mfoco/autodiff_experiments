if(NOT TARGET boost_preprocessor)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_preprocessor
        GIT_REPOSITORY https://github.com/boostorg/preprocessor
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_preprocessor)
    if(NOT boost_preprocessor_POPULATED)
        FetchContent_Populate(boost_preprocessor)
    endif()

    add_library(boost_preprocessor INTERFACE)
    target_include_directories(boost_preprocessor INTERFACE $<BUILD_INTERFACE:${boost_preprocessor_SOURCE_DIR}>/include/)
endif()