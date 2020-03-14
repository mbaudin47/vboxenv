# Michaël Baudin
# This script installs OpenTURNS Python dependencies from apt-get

set -xe

# Python
sudo apt install -y python3-numpy
sudo apt install -y python3-scipy
sudo apt install -y python3-matplotlib
sudo apt install -y python3-nbsphinx 
sudo apt install -y python3-nbconvert
sudo apt install -y python3-dev
sudo apt install -y python3-numpydoc
sudo apt install -y jupyter-notebook

