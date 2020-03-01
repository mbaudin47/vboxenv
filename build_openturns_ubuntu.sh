# Michaël Baudin
# This builds OpenTURNS on Python 3 using Ubuntu packages only

set -xe

cd openturns
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install -DCOIN_ROOT_DIR=/home/osboxes/Documents/Bonmin-stable/build/install -DPYTHON_INCLUDE_PATH=/usr/include/python3.7m -DPYTHON_LIBRARIES=/usr/lib/python3 -DPYTHON_EXECUTABLE=/usr/bin/python3 -DUSE_SPHINX=ON -DSPHINX_FLAGS="-j4"
make -j4
make check
make install
make installcheck
export PYTHONPATH="/home/osboxes/GIT/openturns/build/install/lib/python3.7/site-packages:$PYTHONPATH"
export LD_LIBRARY_PATH="/home/osboxes/GIT/openturns/build/install/lib"

# Check :
#$ python3
#Python 3.7.5rc1 (default, Oct  8 2019, 16:47:45) 
#>>> import openturns
#>>> openturns.__version__
#'1.15dev'

