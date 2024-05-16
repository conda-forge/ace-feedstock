setlocal EnableDelayedExpansion

:: Compile example that links ace
cl.exe  /std:c++17 /EHsc /DWIN32 /I%PREFIX%\Library\include ACE.lib ace_example.cpp
if errorlevel 1 exit 1

:: Run example
.\ace_example.exe
if errorlevel 1 exit 1
