@echo off

setlocal

(
  echo.@echo off
  echo.
  echo set "GIT.REPO_OWNER=andry81"
  echo set "GIT.USER=user"
  echo set "GIT.EMAIL=user@mail.com"
  echo.
  echo set "NSIS_SETUP_DEV.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupDev"
  echo set "NSIS_SETUP_LIB.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupLib"
  echo set "NSIS_SETUP_SAMPLES.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupSamples"
  echo.
  echo set "NSIS_SETUP_DEV.GIT.ORIGIN=https://github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupDev.git"
  echo set "NSIS_SETUP_LIB.GIT.ORIGIN=https://github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupLib.git"
  echo set "NSIS_SETUP_SAMPLES.GIT.ORIGIN=https://github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupSamples.git"
) > "%~dp0configure.user.bat"
