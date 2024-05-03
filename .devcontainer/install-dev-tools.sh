# Put any custom installs in this file

# Put files in USER_FOLDER. Only do this once. 

echo -e "Creating the /home/vscode/.local python respository\n" 

USER_FOLDER="/home/vscode/.local"
if [ ! -d "$USER_FOLDER" ]; then
 
  # install python code to ~/.vscode/.local
  pip install --upgrade pip
  sudo apt-get install -y libcairo2-dev pkg-config python3-dev
  pip install -r .devcontainer/requirements.txt

  # Let's have a user version of python3.
  cp /usr/local/bin/python3.10 /home/vscode/.local/bin
  ln -s /home/vscode/.local/bin/python3.10  /home/vscode/.local/bin/python3

  # Version 8 needed for RISE slides. Generates a red compatibility error. 
  pip install -U ipywidgets==8.0.0

  # Put extra packages here

fi


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook

