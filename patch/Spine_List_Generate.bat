REM �Ķ���� ����
REM excel_file_name, sheet_name, key, option, destination, web_address
@echo off

ruby -I "../../../GundamBase/SazabiExcel" "../../../GundamBase/SazabiExcel/ExcelReader.rb" "spine_list.xlsx" "SPINE_LIST" "INDEX" "json_onlyfile" "../../program"
IF %errorlevel% NEQ 0 GOTO :error

GOTO :end

:error
echo error caught. invalid excel files.
color c
pause
EXIT 1

:end
echo Perfectly success.

pause