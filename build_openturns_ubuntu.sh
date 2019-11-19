# Build OpenTURNS
cd openturns
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install -DCOIN_ROOT_DIR=/home/osboxes/Documents/Bonmin-stable/build/install -DPYTHON_INCLUDE_PATH=/usr/include/python3.7m -DPYTHON_LIBRARIES=/usr/lib/python3 -DPYTHON_EXECUTABLE=/usr/bin/python3 -DUSE_SPHINX=ON -DSPHINX_FLAGS="-j4"
make -j4
make check
make install
make installcheck

