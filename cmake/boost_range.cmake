if(NOT TARGET boost_range)
    include(boost_iterator)
    include(boost_concept_check)
    include(boost_utility)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_range
        GIT_REPOSITORY https://github.com/boostorg/range
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_range)
    if(NOT boost_range_POPULATED)
        FetchContent_Populate(boost_range)
    endif()

    add_library(boost_range INTERFACE)
    target_include_directories(boost_range INTERFACE $<BUILD_INTERFACE:${boost_range_SOURCE_DIR}>/include/)
    target_link_libraries(boost_range INTERFACE boost_iterator boost_concept_check boost_utility)
endif()