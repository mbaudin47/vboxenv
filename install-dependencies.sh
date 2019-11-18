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
pip3 install sphinx

# Get Miniconda
cd ~/Documents
curl -o miniconda.sh "https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh"
cd ~

# Get Bonmin
cd ~/Documents
sudo apt-get install subversion
svn co https://projects.coin-or.org/svn/Bonmin/stable/1.8 Bonmin-stable
cd Bonmin-stable/
cd Thirdparty/Mumps
./get.Mumps
cd ../..
mkdir build
cd build/
../configure --prefix=$PWD/install
make
make install
export COIN_ROOT_DIR="/home/osboxes/Documents/Bonmin-stable/build"

# Get OPT++
# Get sources on https://software.sandia.gov/opt++/opt++_download.html
cd optpp-2.4
mkdir build
../configure --prefix=$PWD/install
make -j4
make check
make install

# Get chaospy
# Référence : https://github.com/jonathf/chaospy
pip3 install chaospy

# Build OpenTURNS
cd openturns
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install -DCOIN_ROOT_DIR=/home/osboxes/Documents/Bonmin-stable/build  -DPYTHON_INCLUDE_PATH=/usr/include/python3.7m -DPYTHON_LIBRARIES=/usr/lib/python3 -DPYTHON_EXECUTABLE=/usr/bin/python3 -DUSE_SPHINX=ON 
make -j4
make check
make install
make installcheck

