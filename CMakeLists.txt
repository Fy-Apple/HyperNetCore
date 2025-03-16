# 设置最低CMake版本要求
cmake_minimum_required(VERSION 3.10)

# 设置项目名称和版本
project(HyperNetCore VERSION 1.0 LANGUAGES CXX)

# 设置编译选项，要求使用C++20标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 设置为调试模式
# set(CMAKE_BUILD_TYPE "Debug")

# 设置项目可执行文件输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# 设置项目库文件输出路径
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)


# 设置头文件目录，   即 -I 参数
include_directories(src/core/logger)
include_directories(src/core/logger/include)
include_directories(src/core/memory_pool)
include_directories(src/core/memory_pool/include)
include_directories(src/core/thread_pool)
include_directories(src/core/thread_pool/include)
include_directories(src/core/timer)
include_directories(src/core/timer/include)


# rpc模块 搜索路径
include_directories(src/rpc)
include_directories(src/rpc/include)

# db模块 搜索路径
include_directories(src/db)
include_directories(src/db/include)

# 工具模块搜索路径
include_directories(src/utils)



# 设置项目库文件搜索路径
link_directories(${PROJECT_SOURCE_DIR}/lib)


# 添加子项目 核心插件
add_subdirectory(src/core)
# 添加子项目 网络模块
add_subdirectory(src/net)
# 添加子项目 rpc模块
add_subdirectory(src/rpc)
# 添加子项目 数据库模块
add_subdirectory(src/db)
# 添加子项目 常用工具模块
add_subdirectory(src/utils)

# 添加示例代码
add_subdirectory(example)


# 输出项目的一些基本信息
message(STATUS "Project: ${PROJECT_NAME}")
message(STATUS "Project version: ${PROJECT_VERSION}")
message(STATUS "C++ standard: ${CMAKE_CXX_STANDARD}")




