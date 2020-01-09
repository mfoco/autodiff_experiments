cmake_minimum_required(VERSION 3.14.0)
project(autodiff_experiments VERSION 0.1.0)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

add_subdirectory(boost_math)
add_subdirectory(enoki)
