:: Construct %PREFIX%\Scripts\emsdk
if not exist %PREFIX%\Scripts mkdir %PREFIX%\Scripts\
xcopy %RECIPE_DIR%\emsdk.py %PREFIX%\Scripts\emsdk.py
if errorlevel 1 exit 1

:: Construct the emsdk Python module
mkdir %PREFIX%\lib\site-packages\emsdk
xcopy * %PREFIX%\lib\site-packages\emsdk /E
type nul > %PREFIX%\lib\site-packages\emsdk\__init__.py
if errorlevel 1 exit 1
