#!/bin/env bash

# Put files in USER_FOLDER. Only do this once. 

# USER_FOLDER="/home/vscode/.local"
# if [ ! -d "$USER_FOLDER" ]; then
#     echo
#     echo -e "Creating the /home/vscode/.local python respository\n" 
#   # echo -e "Installing python3.10 and pip\n"
#   # install python code to ~/.vscode/.local
#   pip install --upgrade pip
pip install -r .devcontainer/requirements.txt
# else
#   echo -e "The /home/vscode/.local python respository is already there\n" 
#   # pip install fastbook
# fi


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook