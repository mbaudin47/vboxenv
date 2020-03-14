# Michaël Baudin
# This script installs OpenTURNS dependencies

set -xe

# Get Ubuntu packages for OpenTURNS
sudo apt install -y git
sudo apt install -y cmake
sudo apt install -y gcc g++ gfortran flex bison
sudo apt install -y libtbb-dev libxml2-dev
sudo apt install -y r-base-core liblapack-dev libmuparser-dev libboost-math-dev
sudo apt install -y swig
sudo apt install -y libnlopt-cxx-dev
sudo apt install -y libcminpack-dev
sudo apt install -y doxygen

# Not maintained anymore
# sudo apt install -y libhmat-oss-dev

sudo apt install -y libpng-dev libjpeg-dev 
sudo apt install -y libdlib19 libdlib-dev
sudo apt install -y libceres1 libceres-dev 
sudo apt install -y libsqlite3-0 libsqlite3-dev
sudo apt install -y coinor-libipopt-dev

# For LaTeX
sudo apt install -y texlive-base
sudo apt install -y texlive
sudo apt install -y texlive-latex-extra

# For development
sudo apt install -y curl


