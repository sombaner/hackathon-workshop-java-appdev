@echo off
setlocal

set DIR=%~dp0
set DIR=%DIR:~0,-1%
set MAVEN_OPTS=%MAVEN_OPTS% -Dfile.encoding=UTF-8

set ERROR_CODE=0
set MAVEN_CMD_LINE_ARGS=%*

IF NOT "%MAVEN_SKIP_RC%"=="" goto skipRcPre

if exist "%USERPROFILE%\mavenrc_pre.cmd" call "%USERPROFILE%\mavenrc_pre.cmd"

:skipRcPre
if exist "%DIR%\mavenrc_pre.cmd" call "%DIR%\mavenrc_pre.cmd"

IF NOT "%MAVEN_SKIP_RC%"=="" goto skipRcPost

if exist "%USERPROFILE%\mavenrc_post.cmd" call "%USERPROFILE%\mavenrc_post.cmd"

:skipRcPost
if exist "%DIR%\mavenrc_post.cmd" call "%DIR%\mavenrc_post.cmd"

IF NOT "%MAVEN_SKIP_RC%"=="" goto end

rem Execute Maven
"%DIR%\mvn" %MAVEN_CMD_LINE_ARGS%

IF ERRORLEVEL 1 set ERROR_CODE=1

:end
endlocal
exit /b %ERROR_CODE%