#!/bin/env bash
# Put any custom installs in this file

# Put files in USER_FOLDER. Only do this once. 

USER_FOLDER="/home/vscode/.local"
[ ! -d "$USER_FOLDER" ] && echo "Directory missing" || echo "Directory exists"
if [ ! -d "$USER_FOLDER" ]; then
    echo -e "Creating the /home/vscode/.local python respository\n" 
  # echo -e "Installing python3.10 and pip\n"
  # install python code to ~/.vscode/.local
  pip install --upgrade pip
  pip install -r .devcontainer/requirements.txt
else
  pip install fastbook
  echo -e "The /home/vscode/.local python respository is already there\n" 
fi


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook