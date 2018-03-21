
setlocal EnableExtensions
SET _prefix=%PY_VER:~0,1%
IF %_prefix%==3 GOTO :install
2to3 -w -n setup.py
2to3 -w -n lib/*

:install
"%PYTHON%" setup.py install  --record=record.txt
if errorlevel 1 exit 1

