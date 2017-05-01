set VCTargetsPath=C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V140
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\vcvars32.bat" 
set PATH=%PATH%;"C:\Program Files\Python 3.5"
"C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe" /p:OutputPath=build build.xml
