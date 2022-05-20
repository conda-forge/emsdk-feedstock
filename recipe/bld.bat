:: Construct %PREFIX%\Library\bin\emsdk
echo "# -*- coding: utf-8 -*-" >> %PREFIX%\Library\bin\emsdk.py
echo "import sys" >> %PREFIX%\Library\bin\emsdk.py
echo "from emsdk.emsdk import main" >> %PREFIX%\Library\bin\emsdk.py
echo "main(sys.argv[1:])" >> %PREFIX%\Library\bin\emsdk.py
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
