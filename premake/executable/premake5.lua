project "executable"
    kind "ConsoleApp"
    language "C++"

    files {"ExecutableSource.cpp"}
    links { "dynlib" }
    includedirs { "../dynlib" }