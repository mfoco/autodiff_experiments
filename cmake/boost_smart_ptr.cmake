if(NOT TARGET boost_smart_ptr)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_smart_ptr
        GIT_REPOSITORY https://github.com/boostorg/smart_ptr
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_smart_ptr)
    if(NOT boost_smart_ptr_POPULATED)
        FetchContent_Populate(boost_smart_ptr)
    endif()

    add_library(boost_smart_ptr INTERFACE)
    target_include_directories(boost_smart_ptr INTERFACE $<BUILD_INTERFACE:${boost_smart_ptr_SOURCE_DIR}>/include/)
endif()