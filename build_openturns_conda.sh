# Build OpenTURNS
cd openturns
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install -DCOIN_ROOT_DIR=/home/osboxes/Documents/Bonmin-stable/build/install -DUSE_SPHINX=ON -DSPHINX_FLAGS="-j4"
make -j4
make check
make install
make installcheck

