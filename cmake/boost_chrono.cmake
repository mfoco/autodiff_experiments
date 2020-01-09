if(NOT TARGET boost_chrono)
    include(boost_ratio)
    include(boost_system)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_chrono
        GIT_REPOSITORY https://github.com/boostorg/chrono
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_chrono)
    if(NOT boost_chrono_POPULATED)
        FetchContent_Populate(boost_chrono)
    endif()

    add_library(boost_chrono INTERFACE)
    target_include_directories(boost_chrono INTERFACE $<BUILD_INTERFACE:${boost_chrono_SOURCE_DIR}>/include/)
    target_link_libraries(boost_chrono INTERFACE boost_ratio boost_system)
endif()