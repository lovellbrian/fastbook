# Put any custom installs in this file

# Put files in USER_FOLDER. Only do this once. 

USER_FOLDER="/home/vscode/.local"
if [ ! -d "$USER_FOLDER" ]; then
  echo -e "*******************************************************\n"
  echo -e "Creating the /home/vscode/.local python respository\n"
  echo -e "*******************************************************\n" 
  # install python code to ~/.vscode/.local
  pip install --upgrade pip
  # sudo apt-get install -y libcairo2-dev 
  pip install --break-system-packages -r .devcontainer/requirements.txt
else
  echo -e "*******************************************************\n"
  echo -e "The /home/vscode/.local python respository already exists\n"
  echo -e "*******************************************************\n"
fi
# pip install fastbook
# pip install dtreeviz


# Notes:
# Commands for presentation using jupyter notebook
# cd slides
# jupyter nbconvert birds.ipynb --to slides --post serve
# Jupyter notebook

