REM �Ķ���� ����
REM excel_file_name, sheet_name, key, option, destination, web_address
@echo off

ruby -I "../../../GundamBase/SazabiExcel" "../../../GundamBase/SazabiExcel/ExcelReader.rb" "MASTERY_POINT_INFO.xlsx" "MASTERY_POINT_INFO" "MASTERY_POINT" "rails_scaffold|unity|json"  "../../program"
IF %errorlevel% NEQ 0 GOTO :error


GOTO :end


:error
echo error caught. invalid excel files.
color c
pause
EXIT 1

:end
echo Perfectly success.