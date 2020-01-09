cmake_minimum_required(VERSION 3.14)

include(boost_math)

add_executable(boost_forward_diff
    main.cpp
)

target_link_libraries(boost_forward_diff PUBLIC boost_math)
set_target_properties(boost_forward_diff PROPERTIES
    CXX_STANDARD_REQUIRED ON
    CXX_STANDARD 20
)
