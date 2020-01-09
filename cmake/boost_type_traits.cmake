if(NOT TARGET boost_type_traits)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_type_traits
        GIT_REPOSITORY https://github.com/boostorg/type_traits
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_type_traits)
    if(NOT boost_type_traits_POPULATED)
        FetchContent_Populate(boost_type_traits)
    endif()

    add_library(boost_type_traits INTERFACE)
    target_include_directories(boost_type_traits INTERFACE $<BUILD_INTERFACE:${boost_type_traits_SOURCE_DIR}>/include/)
endif()