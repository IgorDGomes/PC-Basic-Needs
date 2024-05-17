@echo off
cls
:menu
cls
color 02

date /t

echo Computer: %computername%        User: %username%
                   
echo            TASKS MENU
echo  ==================================
echo * 1. Clean Recycle Bin             * 
echo * 2. Backup                        *
echo * 3. Scan Local Disk               *
echo * 4. Control Panel                 *
echo * 5. Exit                          * 
echo  ==================================

set /p opcao= Choose one option: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *       Recycle Bin Cleaned      *
echo ==================================
pause
goto menu

:opcao2
cls
echo ===================================
echo *  Functionality temporarily off  *
echo ===================================
pause
goto menu


:opcao3
cls
echo ==================================
echo *          Disk scanning         *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
echo ==================================================
echo * Invalid Option! Choose one of the Menu options *
echo ==================================================
pause
goto menu