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


