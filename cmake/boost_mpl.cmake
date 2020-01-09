if(NOT TARGET boost_mpl)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_mpl
        GIT_REPOSITORY https://github.com/boostorg/mpl
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_mpl)
    if(NOT boost_mpl_POPULATED)
        FetchContent_Populate(boost_mpl)
    endif()

    add_library(boost_mpl INTERFACE)
    target_include_directories(boost_mpl INTERFACE $<BUILD_INTERFACE:${boost_mpl_SOURCE_DIR}>/include/)
endif()