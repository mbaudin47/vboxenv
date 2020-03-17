# Michaël Baudin
# This script installs OpenTURNS Python dependencies from apt-get

set -xe

# Python
sudo apt install -y python3-numpy
sudo apt install -y python3-scipy
sudo apt install -y python3-matplotlib
sudo apt install -y python3-dev
sudo apt install -y jupyter-notebook
#sudo apt install -y python3-numpydoc
#sudo apt install -y python3-nbsphinx 
#sudo apt install -y python3-nbconvert

sudo apt-get install python3-pip
pip3 install nbsphinx
pip3 install numpydoc
pip3 install sphinx
pip3 install pandas

