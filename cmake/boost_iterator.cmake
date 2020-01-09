if(NOT TARGET boost_iterator)
    include(boost_core)
    include(boost_detail)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_iterator
        GIT_REPOSITORY https://github.com/boostorg/iterator
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_iterator)
    if(NOT boost_iterator_POPULATED)
        FetchContent_Populate(boost_iterator)
    endif()

    add_library(boost_iterator INTERFACE)
    target_include_directories(boost_iterator INTERFACE $<BUILD_INTERFACE:${boost_iterator_SOURCE_DIR}>/include/)
    target_link_libraries(boost_iterator INTERFACE boost_core boost_detail)
endif()