@echo off

if not "%1"=="" goto :crack
echo �뽫libTDMaster.dll�϶������������ļ�
pause>nul
goto :end



:crack
taskkill /f /t /im StudentMain.exe
taskkill /f /t /im PhantosysClientService.exe
taskkill /f /t /im MasterHelper.exe

del /f "C:\Program Files (x86)\Phantosys\PhantosysCloud v5.0 2014 standard\libTDMaster.dll"
move %1 "C:\Program Files (x86)\Phantosys\PhantosysCloud v5.0 2014 standard\libTDMaster.dll"

"C:\Program Files (x86)\Phantosys\PhantosysCloud v5.0 2014 standard\StudentMain.exe"
echo ��������ɹ��ƶ��ļ������ʾ�ɹ��ˡ�
ping 127.0.0.1 > nul
:end