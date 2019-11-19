# Michaël Baudin
# This script installs OpenTURNS dependencies

# Get Ubuntu packages
sudo apt-get install -y git
sudo apt-get install -y cmake
sudo apt-get install -y gcc g++ gfortran flex bison
sudo apt-get install -y libtbb-dev libxml2-dev
sudo apt-get install -y r-base-core liblapack-dev libmuparser-dev libboost-math-dev
sudo apt-get install -y swig
sudo apt-get install -y libnlopt-cxx-dev
sudo apt-get install -y libcminpack-dev
sudo apt-get install -y doxygen
sudo apt-get install -y libhmat-oss-dev
sudo apt-get install -y texlive-base
sudo apt-get install -y texlive
sudo apt-get install -y texlive-latex-extra
sudo apt-get install -y libpng-dev libjpeg-dev 
sudo apt-get install -y python3-numpy
sudo apt-get install -y python3-scipy
sudo apt-get install -y python3-matplotlib
sudo apt-get install -y python3-nbsphinx 
sudo apt-get install -y python3-nbconvert
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y jupyter-notebook
sudo apt-get install -y libdlib19 libdlib-dev
sudo apt-get install -y libceres1 libceres-dev 
sudo apt-get install -y libsqlite3-0 libsqlite3-dev
pip3 install numpydoc
pip3 install -U Sphinx

