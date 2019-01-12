cmake_minimum_required(VERSION 3.0)

add_executable(main main.cpp)
target_include_directories(main PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_library(shared_lib SHARED shared.cpp)

option(USE_SYMBOL_MAP OFF)
if(USE_SYMBOL_MAP)
    set_target_properties(shared_lib PROPERTIES LINK_FLAGS "-Wl,--version-script=${CMAKE_CURRENT_SOURCE_DIR}/symbols.map")
endif(USE_SYMBOL_MAP)

target_include_directories(shared_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(main shared_lib)
