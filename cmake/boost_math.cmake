if(NOT TARGET boost_math)
    include(boost_static_assert)
    include(boost_config)
    include(boost_predef)
    include(boost_type_traits)
    include(boost_mpl)
    include(boost_preprocessor)
    include(boost_assert)
    include(boost_lexical_cast)
    include(boost_detail)
    include(boost_smart_ptr)
    include(boost_chrono)

    cmake_minimum_required(VERSION 3.14)

    include(FetchContent)

    FetchContent_Declare(
        boost_math
        GIT_REPOSITORY https://github.com/boostorg/math
        GIT_TAG        boost-1.72.0
    )

    FetchContent_GetProperties(boost_math)
    if(NOT boost_math_POPULATED)
        FetchContent_Populate(boost_math)
    endif()

    add_library(boost_math INTERFACE)
    target_include_directories(boost_math INTERFACE $<BUILD_INTERFACE:${boost_math_SOURCE_DIR}>/include/)
    target_link_libraries(boost_math INTERFACE boost_static_assert boost_config boost_predef boost_type_traits boost_mpl boost_preprocessor boost_assert boost_lexical_cast boost_detail boost_smart_ptr boost_chrono)
endif()