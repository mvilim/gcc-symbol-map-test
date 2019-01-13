cmake_minimum_required(VERSION 3.0)

add_executable(main_on main.cpp)
add_executable(main_off main.cpp)
target_include_directories(main_on PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(main_off PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_library(shared_lib_on SHARED shared.cpp)
add_library(shared_lib_off SHARED shared.cpp)

set_target_properties(shared_lib_on PROPERTIES LINK_FLAGS "-Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/symbols.map")

target_include_directories(shared_lib_on PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(shared_lib_off PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(main_on shared_lib_on)
target_link_libraries(main_off shared_lib_off)
