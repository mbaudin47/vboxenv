# Get Bonmin
cd ~/Documents
sudo apt-get install -y subversion
svn co https://projects.coin-or.org/svn/Bonmin/stable/1.8 Bonmin-stable
cd Bonmin-stable/ThirdParty/Mumps/
./get.Mumps
cd ../..
mkdir build
cd build/
../configure --prefix=$PWD/install
make -j4
make install
export COIN_ROOT_DIR="/home/osboxes/Documents/Bonmin-stable/build"


