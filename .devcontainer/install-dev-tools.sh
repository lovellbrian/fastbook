#!/bin/env bash

# Put any custom installs in this file

pip install --upgrade pip
pip install -r .devcontainer/requirements.txt
 
# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook