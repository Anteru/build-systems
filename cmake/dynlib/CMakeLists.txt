project(dynlib)

add_library(dynlib SHARED 
    DynamicLibrarySource.cpp)
target_include_directories(dynlib
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(dynlib 
    PRIVATE BUILD_DYNAMIC_LIBRARY=1)
target_link_libraries(dynlib statlib)