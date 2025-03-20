#!/bin/bash

# Put any custom installs in this file

# Put files in USER_FOLDER. Only do this once. 
USER_FOLDER="/home/vscode/.local"
if [ ! -d "$USER_FOLDER" ]; then
  echo -e "Creating the $USER_FOLDER python respository\n" 
  # install python code to ~/.vscode/.local
  pip install --upgrade pip
  pip install -r .devcontainer/requirements.txt
  # Let's have a user version of python3.
  cp /usr/local/bin/python3.10 /home/vscode/.local/bin
  ln -s /home/vscode/.local/bin/python3.10 /home/vscode/.local/bin/python3
  # Version 8 needed for RISE slides. Generates a red compatibility error. 
  pip install -U ipywidgets==8.0.0
  # Put extra packages here

else
  echo -e "User folder $USER_FOLDER already exists\n"
fi


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook

