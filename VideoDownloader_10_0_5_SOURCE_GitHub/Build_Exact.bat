@echo off
setlocal EnableExtensions
cd /d "%~dp0"

set "CSC64=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
set "CSC32=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe"
if exist "%CSC64%" (
    set "CSC=%CSC64%"
) else if exist "%CSC32%" (
    set "CSC=%CSC32%"
) else (
    echo NAPAKA: Windowsov prevajalnik csc.exe ni bil najden.
    echo Vklopi .NET Framework 4.x v »Windows Features«.
    pause
    exit /b 1
)

if not exist "bin\Release" mkdir "bin\Release"

"%CSC%" /nologo /target:winexe /optimize+ /platform:anycpu /langversion:5 /codepage:65001 ^
 /win32icon:"VideoDownloader.ico" ^
 /resource:"Resources\SubtitlePreview.jpg",BorutVideoDownloader.SubtitlePreview.jpg ^
 /out:"bin\Release\VideoDownloader.exe" ^
 /reference:System.dll ^
 /reference:System.Core.dll ^
 /reference:System.Drawing.dll ^
 /reference:System.Windows.Forms.dll ^
 /reference:System.Xml.dll ^
 /reference:System.Xml.Linq.dll ^
 /reference:System.Runtime.Serialization.dll ^
 /reference:System.Web.Extensions.dll ^
 /reference:System.IO.Compression.dll ^
 /reference:System.IO.Compression.FileSystem.dll ^
 "src\VideoDownloader.cs"

if errorlevel 1 (
    echo.
    echo PREVAJANJE NI USPELO.
    pause
    exit /b 1
)

echo.
echo Program je bil uspesno ustvarjen:
echo %CD%\bin\Release\VideoDownloader.exe
pause
