:: Construct %SCRIPTS%\emsdk
echo "#!%PREFIX%/bin/python" >> %SCRIPTS%\emsdk
echo "# -*- coding: utf-8 -*-" >> %SCRIPTS%\emsdk
echo "import sys" >> %SCRIPTS%\emsdk
echo "from emsdk.emsdk import main" >> %SCRIPTS%\emsdk
echo "main(sys.argv[1:])" >> %SCRIPTS%\emsdk
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
