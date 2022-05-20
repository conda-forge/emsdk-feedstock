:: Construct %PREFIX%\bin\emsdk
mkdir %PREFIX%\bin
echo "#!%PREFIX%/bin/python" >> %PREFIX%\bin\emsdk
echo "# -*- coding: utf-8 -*-" >> %PREFIX%\bin\emsdk
echo "import sys" >> %PREFIX%\bin\emsdk
echo "from emsdk.emsdk import main" >> %PREFIX%\bin\emsdk
echo "main(sys.argv[1:])" >> %PREFIX%\bin\emsdk

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
