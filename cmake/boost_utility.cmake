if(NOT TARGET boost_utility)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_utility
        GIT_REPOSITORY https://github.com/boostorg/utility
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_utility)
    if(NOT boost_utility_POPULATED)
        FetchContent_Populate(boost_utility)
    endif()

    add_library(boost_utility INTERFACE)
    target_include_directories(boost_utility INTERFACE $<BUILD_INTERFACE:${boost_utility_SOURCE_DIR}>/include/)
endif()