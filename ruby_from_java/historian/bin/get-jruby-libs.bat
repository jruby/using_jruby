REM This script requires you to have the 'curl' command-line tool installed.
REM You can get it from http://curl.haxx.se.
REM

curl http://jruby.org.s3.amazonaws.com/downloads/1.5.5/jruby-complete-1.5.5.jar -o lib/jruby-complete.jar
IF %ERRORLEVEL% NEQ 0 ECHO "Could not download file; do you have curl installed?"
