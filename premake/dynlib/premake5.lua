project "dynlib"
    kind "SharedLib"
    language "C++"

    includedirs { "." }
    files {"DynamicLibrarySource.cpp"}

    links {"statlib"}
    includedirs { "../statlib"}
    defines { "BUILD_DYNAMIC_LIBRARY=1"}