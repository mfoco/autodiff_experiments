if(NOT TARGET boost_concept_check)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_concept_check
        GIT_REPOSITORY https://github.com/boostorg/concept_check
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_concept_check)
    if(NOT boost_concept_check_POPULATED)
        FetchContent_Populate(boost_concept_check)
    endif()

    add_library(boost_concept_check INTERFACE)
    target_include_directories(boost_concept_check INTERFACE $<BUILD_INTERFACE:${boost_concept_check_SOURCE_DIR}>/include/)
endif()