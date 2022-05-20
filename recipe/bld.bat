:: Construct %PREFIX%\Scripts\emsdk
if not exist %PREFIX%\Scripts mkdir %PREFIX%\Scripts\
echo "# -*- coding: utf-8 -*-" >> %PREFIX%\Scripts\emsdk.py
echo "import sys" >> %PREFIX%\Scripts\emsdk.py
echo "from emsdk.emsdk import main" >> %PREFIX%\Scripts\emsdk.py
echo "main(sys.argv[1:])" >> %PREFIX%\Scripts\emsdk.py
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
