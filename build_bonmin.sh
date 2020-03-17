# Michaël Baudin
# This script get and builds Bonmin

set -xe

# Download
sudo apt install -y subversion
svn co https://projects.coin-or.org/svn/Bonmin/stable/1.8 Bonmin-stable
cd Bonmin-stable/ThirdParty/Mumps/
./get.Mumps
cd ../..

# Build
mkdir build
cd build/
../configure --prefix=$PWD/install
make -j4
make install
cd ..

# Export environment variables
echo `pwd`
export COIN_ROOT_DIR="$PWD/build/install"

cd ..
