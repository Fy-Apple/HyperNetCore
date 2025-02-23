cmake_minimum_required(VERSION 3.10)

project(HyperNetCore)

set(CMAKE_CXX_STANDARD 20)

#include_directories(include)

add_subdirectory(src/core/memory_pool)
add_subdirectory(src/core/thread_pool)
add_subdirectory(src/net)
add_subdirectory(src/rpc)
add_subdirectory(src/db)
