# Michaël Baudin
# This script installs OpenTURNS dependencies

set -xe

# Get Ubuntu packages for OpenTURNS
sudo apt-get install -y git
sudo apt-get install -y cmake
sudo apt-get install -y gcc g++ gfortran flex bison
sudo apt-get install -y libtbb-dev libxml2-dev
sudo apt-get install -y r-base-core liblapack-dev libmuparser-dev libboost-math-dev
sudo apt-get install -y swig
sudo apt-get install -y libnlopt-cxx-dev
sudo apt-get install -y libcminpack-dev
sudo apt-get install -y doxygen

# Not maintained anymore
# sudo apt-get install -y libhmat-oss-dev

sudo apt-get install -y libpng-dev libjpeg-dev 
sudo apt-get install -y libdlib19 libdlib-dev
sudo apt-get install -y libceres1 libceres-dev 
sudo apt-get install -y libsqlite3-0 libsqlite3-dev

# For LaTeX
sudo apt-get install -y texlive-base
sudo apt-get install -y texlive
sudo apt-get install -y texlive-latex-extra

# For development
sudo apt-get install -y curl


