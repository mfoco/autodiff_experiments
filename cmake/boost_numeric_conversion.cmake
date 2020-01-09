if(NOT TARGET boost_numeric_conversion)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_numeric_conversion
        GIT_REPOSITORY https://github.com/boostorg/numeric_conversion
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_numeric_conversion)
    if(NOT boost_numeric_conversion_POPULATED)
        FetchContent_Populate(boost_numeric_conversion)
    endif()

    add_library(boost_numeric_conversion INTERFACE)
    target_include_directories(boost_numeric_conversion INTERFACE $<BUILD_INTERFACE:${boost_numeric_conversion_SOURCE_DIR}>/include/)
endif()