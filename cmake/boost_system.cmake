if(NOT TARGET boost_system)
    include(boost_winapi)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_system
        GIT_REPOSITORY https://github.com/boostorg/system
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_system)
    if(NOT boost_system_POPULATED)
        FetchContent_Populate(boost_system)
    endif()

    add_library(boost_system INTERFACE)
    target_include_directories(boost_system INTERFACE $<BUILD_INTERFACE:${boost_system_SOURCE_DIR}>/include/)
    target_link_libraries(boost_system INTERFACE boost_winapi)
endif()