:: Construct %PREFIX%\bin\emsdk
if not exist "%PREFIX%\bin" mkdir %PREFIX%\bin
echo "# -*- coding: utf-8 -*-" >> %PREFIX%\bin\emsdk.py
echo "import sys" >> %PREFIX%\bin\emsdk.py
echo "from emsdk.emsdk import main" >> %PREFIX%\bin\emsdk.py
echo "main(sys.argv[1:])" >> %PREFIX%\bin\emsdk.py
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
