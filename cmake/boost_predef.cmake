if(NOT TARGET boost_predef)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_predef
        GIT_REPOSITORY https://github.com/boostorg/predef
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_predef)
    if(NOT boost_predef_POPULATED)
        FetchContent_Populate(boost_predef)
    endif()

    add_library(boost_predef INTERFACE)
    target_include_directories(boost_predef INTERFACE $<BUILD_INTERFACE:${boost_predef_SOURCE_DIR}>/include/)
endif()