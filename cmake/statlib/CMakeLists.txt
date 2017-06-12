project(statlib)
find_package(PythonInterp 3.5 REQUIRED)

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/lookup_table.cpp
    COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/tablegen.py > ${CMAKE_CURRENT_BINARY_DIR}/lookup_table.cpp
    DEPENDS tablegen.py)

add_library(statlib STATIC
    StaticLibrarySource.cpp ${CMAKE_CURRENT_BINARY_DIR}/lookup_table.cpp)
target_include_directories(statlib
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
set_property (TARGET statlib PROPERTY POSITION_INDEPENDENT_CODE TRUE)
