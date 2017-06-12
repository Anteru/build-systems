project(executable)

add_executable (executable ExecutableSource.cpp)
target_link_libraries(executable dynlib)