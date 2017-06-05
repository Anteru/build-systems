project "statlib"
    kind "StaticLib"
    language "C++"

    files {"StaticLibrarySource.cpp", "%{cfg.buildtarget.directory}/table.cpp"}

    p = path.getabsolute (os.getcwd ())
    prebuildcommands { "\"C:\\Program Files\\Python36\\python.exe\" " .. p .. "/tablegen.py > %{cfg.buildtarget.directory}/table.cpp" }