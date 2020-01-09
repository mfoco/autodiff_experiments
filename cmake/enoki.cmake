if(NOT TARGET enoki)
    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        enoki
        GIT_REPOSITORY https://github.com/mitsuba-renderer/enoki
        GIT_TAG        v0.1.0
    )

    FetchContent_GetProperties(enoki)
    if(NOT enoki_POPULATED)
        FetchContent_Populate(enoki)
    endif()

    add_library(enoki INTERFACE)
    target_include_directories(enoki INTERFACE $<BUILD_INTERFACE:${enoki_SOURCE_DIR}>/include/)
endif()