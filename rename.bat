@echo off
set cd=d:\
xcopy /y /f %cd%\payslip\sai.txt %cd%\payslip\sy
move /y %cd%\payslip\sai.txt %cd%\payslip\sai1.txt
pause