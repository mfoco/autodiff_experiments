if(NOT TARGET boost_container)
    include(boost_move)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_container
        GIT_REPOSITORY https://github.com/boostorg/container
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_container)
    if(NOT boost_container_POPULATED)
        FetchContent_Populate(boost_container)
    endif()

    add_library(boost_container INTERFACE)
    target_include_directories(boost_container INTERFACE $<BUILD_INTERFACE:${boost_container_SOURCE_DIR}>/include/)
    target_link_libraries(boost_container INTERFACE boost_move)
endif()