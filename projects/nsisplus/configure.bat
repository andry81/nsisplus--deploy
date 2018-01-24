@echo off

echo.^>%~dpnx0

setlocal

if not defined NEST_LVL set NEST_LVL=0

set /A NEST_LVL+=1

(
  echo.@echo off
  echo.
  echo.set PROJECT_NAME=nsisplus
  echo.set "WCROOT_OFFSET=../../../../_%%PROJECT_NAME%%"
  echo.
  echo.set "NSISPLUS_DEPLOY.SVN.REPOROOT=https://%%SVN.HUB_ROOT%%/nsisplus/deploy"
  echo.set "NSIS_SETUP_DEV.SVN.REPOROOT=https://%%SVN.HUB_ROOT%%/nsisplus/NsisSetupDev"
  echo.set "NSIS_SETUP_LIB.SVN.REPOROOT=https://%%SVN.HUB_ROOT%%/nsisplus/NsisSetupLib"
  echo.set "NSIS_SETUP_SAMPLES.SVN.REPOROOT=https://%%SVN.HUB_ROOT%%/nsisplus/NsisSetupSamples"
  echo.
  echo.set "NSISPLUS_DEPLOY.GIT.ORIGIN=https://%%GIT.USER%%@%%GIT.HUB_ROOT%%/%%GIT.REPO_OWNER%%/nsisplus--deploy.git"
  echo.set "NSIS_SETUP_DEV.GIT.ORIGIN=https://%%GIT.USER%%@%%GIT.HUB_ROOT%%/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupDev.git"
  echo.set "NSIS_SETUP_LIB.GIT.ORIGIN=https://%%GIT.USER%%@%%GIT.HUB_ROOT%%/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupLib.git"
  echo.set "NSIS_SETUP_SAMPLES.GIT.ORIGIN=https://%%GIT.USER%%@%%GIT.HUB_ROOT%%/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupSamples.git"
  echo.
  echo.set "NSISPLUS_DEPLOY.GIT2.ORIGIN=https://%%GIT2.USER%%@%%GIT2.HUB_ROOT%%/%%GIT2.REPO_OWNER%%/nsisplus-deploy.git"
  echo.set "NSIS_SETUP_DEV.GIT2.ORIGIN=https://%%GIT2.USER%%@%%GIT2.HUB_ROOT%%/%%GIT2.REPO_OWNER%%/nsisplus-nsissetupdev.git"
  echo.set "NSIS_SETUP_LIB.GIT2.ORIGIN=https://%%GIT2.USER%%@%%GIT2.HUB_ROOT%%/%%GIT2.REPO_OWNER%%/nsisplus-nsissetuplib.git"
  echo.set "NSIS_SETUP_SAMPLES.GIT2.ORIGIN=https://%%GIT2.USER%%@%%GIT2.HUB_ROOT%%/%%GIT2.REPO_OWNER%%/nsisplus-nsissetupsamples.git"
  echo.
) > "%~dp0configure.user.bat"

for /F "usebackq eol=	 tokens=* delims=" %%i in (`dir /A:D /B "%~dp0*.*"`) do (
  set "DIR=%%i"
  call :PROCESS_DIR
)

set /A NEST_LVL-=1

if %NEST_LVL% LEQ 0 pause

exit /b 0

:PROCESS_DIR
rem ignore directories beginning by `.`
if "%DIR:~0,1%" == "." exit /b 0

if exist "%~dp0%DIR%\configure.bat" call :CMD "%%~dp0%%DIR%%\configure.bat"

exit /b

:CMD
echo.^>%*
(%*)
