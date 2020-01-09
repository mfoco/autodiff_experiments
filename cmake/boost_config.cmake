if(NOT TARGET boost_config)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_config
        GIT_REPOSITORY https://github.com/boostorg/config
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_config)
    if(NOT boost_config_POPULATED)
        FetchContent_Populate(boost_config)
    endif()

    add_library(boost_config INTERFACE)
    target_include_directories(boost_config INTERFACE $<BUILD_INTERFACE:${boost_config_SOURCE_DIR}>/include/)
endif()