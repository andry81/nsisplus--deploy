@echo off

setlocal

(
  echo.@echo off
  echo.
  echo.rem primary mirror: github.com
  echo set "GIT.REPO_OWNER=andry81"
  echo set "GIT.USER=user"
  echo set "GIT.EMAIL=user@mail.com"
  echo.
  echo.rem secondary mirror: bitbucket.org
  echo set "GIT2.REPO_OWNER=andry81"
  echo set "GIT2.USER=user"
  echo set "GIT2.EMAIL=user@mail.com"
  echo.
  echo set "NSIS_SETUP_DEV.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupDev"
  echo set "NSIS_SETUP_LIB.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupLib"
  echo set "NSIS_SETUP_SAMPLES.SVN.REPOROOT=https://svn.code.sf.net/p/nsisplus/NsisSetupSamples"
  echo.
  echo set "NSIS_SETUP_DEV.GIT.ORIGIN=https://%%GIT.USER%%@github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupDev.git"
  echo set "NSIS_SETUP_LIB.GIT.ORIGIN=https://%%GIT.USER%%@github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupLib.git"
  echo set "NSIS_SETUP_SAMPLES.GIT.ORIGIN=https://%%GIT.USER%%@github.com/%%GIT.REPO_OWNER%%/nsisplus--NsisSetupSamples.git"
  echo.
  echo set "NSIS_SETUP_DEV.GIT2.ORIGIN=https://%%GIT2.USER%%@bitbucket.org/%%GIT2.REPO_OWNER%%/nsisplus-nsissetupdev.git"
  echo set "NSIS_SETUP_LIB.GIT2.ORIGIN=https://%%GIT2.USER%%@bitbucket.org/%%GIT2.REPO_OWNER%%/nsisplus-nsissetuplib.git"
  echo set "NSIS_SETUP_SAMPLES.GIT2.ORIGIN=https://%%GIT2.USER%%@bitbucket.org/%%GIT2.REPO_OWNER%%/nsisplus-nsissetupsamples.git"
  echo.
) > "%~dp0configure.user.bat"
