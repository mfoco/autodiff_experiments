if(NOT TARGET boost_lexical_cast)
    include(boost_range)
    include(boost_throw_exception)
    include(boost_numeric_conversion)
    include(boost_integer)
    include(boost_array)
    include(boost_container)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_lexical_cast
        GIT_REPOSITORY https://github.com/boostorg/lexical_cast
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_lexical_cast)
    if(NOT boost_lexical_cast_POPULATED)
        FetchContent_Populate(boost_lexical_cast)
    endif()

    add_library(boost_lexical_cast INTERFACE)
    target_include_directories(boost_lexical_cast INTERFACE $<BUILD_INTERFACE:${boost_lexical_cast_SOURCE_DIR}>/include/)
    target_link_libraries(boost_lexical_cast INTERFACE boost_range boost_throw_exception boost_numeric_conversion boost_integer boost_array boost_container)
endif()