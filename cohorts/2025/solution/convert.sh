#!/bin/bash

#convert.sh my-markdown-file.md my-notebook.ipynb

[[ -e convert.py ]] || curl -L --silent -o convert.py https://raw.githubusercontent.com/notaconduit/md2ipynb/1cb6250980dcd7d3c6589e8760e8f563a1442907/convert.py

uv run --no-project --with pypandoc_binary --with nbformat convert.py $1 $2