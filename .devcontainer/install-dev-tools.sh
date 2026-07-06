#!/bin/env bash
# Put any custom installs in this file

# Put files in USER_FOLDER. Only do this once. 

USER_FOLDER="/home/vscode/.local"
[ -d "$USER_FOLDER" ] && echo "Directory exists" || echo "Directory missing"
if [ ! -d "$USER_FOLDER" ]; then
  echo -e "Creating the /home/vscode/.local python respository\n" 
  echo -e "Installing python3.10 and pip\n"
  # install python code to ~/.vscode/.local
  pip install --upgrade pip
  sudo apt-get update
  sudo apt-get install -y libcairo2-dev pkg-config python3-dev libgirepository1.0-dev
  pip install -r .devcontainer/requirements.txt

  # Let's have a user version of python3.
  echo "got to here"
  echo -e "Copying python3.10 to /home/vscode/.local/bin\n"
  cp /usr/local/bin/python3.10 /home/vscode/.local/bin/python3.10
  ln -s /home/vscode/.local/bin/python3.10  /home/vscode/.local/bin/python3

    # Put extra packages here

else
  echo -e "The /home/vscode/.local python respository is already there\n" 
fi


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook