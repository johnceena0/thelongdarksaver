@ECHO-OFF

set datetime="%date% %time:~0,2%'%time:~3,2%'%time:~6,2%"
mkdir %HOMEPATH%\Desktop\saves_TLD\%datetime%
cd %HOMEPATH%\Desktop\saves_TLD
cd %datetime%
xcopy /y /I %USERPROFILE%\AppData\Local\Hinterland\TheLongDark %USERPROFILE%\Desktop\saves_TLD\%datetime%\TheLongDark

cd TheLongDark
echo CHOICE /C YN /M "Are you sure that you want to write this save?: " >apply_save.bat
echo IF ERRORLEVEL 2 goto exit >>apply_save.bat
echo IF ERRORLEVEL 1 goto save >>apply_save.bat
echo :save >>apply_save.bat
echo rmdir /S /Q %USERPROFILE%\AppData\Local\Hinterland\TheLongDark >>apply_save.bat
echo xcopy /y /I "%CD%" "%USERPROFILE%\AppData\Local\Hinterland\TheLongDark" >>apply_save.bat
echo del %USERPROFILE%\AppData\Local\Hinterland\TheLongDark\apply_save.bat >>apply_save.bat
echo :exit >>apply_save.bat
echo exit >>apply_save.bat



