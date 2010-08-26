REM This script requires you to have the 'curl' command-line tool installed.
REM You can get it from http://curl.haxx.se.
REM

curl http://jruby.kenai.com/downloads/current/jruby-complete-1.4.0.jar -o lib/jruby-complete.jar
IF %ERRORLEVEL% NEQ 0 ECHO "Could not download file; do you have curl installed?"
