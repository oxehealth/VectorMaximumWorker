cmake_minimum_required (VERSION 2.6)
project (VectorMaximumWorker)

file ( GLOB_RECURSE ${PROJECT_NAME}_SRCS "src/*.cpp")
file ( GLOB_RECURSE ${PROJECT_NAME}_HDRS "src/*.h*")

include_directories(
        ${PROJECT_SOURCE_DIR}/src
    )

add_executable(
        VectorMaximumWorker 
        ${${PROJECT_NAME}_SRCS}
        ${${PROJECT_NAME}_HDRS}
    )