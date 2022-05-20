#!/bin/sh

# Construct $PREFIX/bin/emsdk
mkdir -p $PREFIX/bin
echo "#!$PREFIX/bin/python" >> $PREFIX/bin/emsdk
echo "# -*- coding: utf-8 -*-" >> $PREFIX/bin/emsdk
echo "import sys" >> $PREFIX/bin/emsdk
echo "from emsdk.emsdk import main" >> $PREFIX/bin/emsdk
echo "main(sys.argv[1:])" >> $PREFIX/bin/emsdk

# Construct the emsdk Python module
mkdir -p $PREFIX/lib/python$PY_VER/site-packages/emsdk
cp -r * $PREFIX/lib/python$PY_VER/site-packages/emsdk
touch $PREFIX/lib/python$PY_VER/site-packages/emsdk/__init__.py
