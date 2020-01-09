cmake_minimum_required(VERSION 3.14)

include(enoki)

add_executable(enoki_reverse_diff
    main.cpp
)

target_link_libraries(enoki_reverse_diff PUBLIC enoki)
set_target_properties(enoki_reverse_diff PROPERTIES
    CXX_STANDARD_REQUIRED ON
    CXX_STANDARD 20
)
