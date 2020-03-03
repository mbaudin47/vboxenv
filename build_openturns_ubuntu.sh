# Michaël Baudin
# This builds OpenTURNS on Python 3 using Ubuntu packages only

set -xe

# Build:
cd openturns
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install -DUSE_SPHINX=ON -DSPHINX_FLAGS="-j4"
make -j4
make check
make install
make installcheck

# Export environment variables
export PYTHONPATH="$PWD/install/lib/python3.7/site-packages:$PYTHONPATH"
export LD_LIBRARY_PATH="$PWD/install/lib"

# Check :
#$ python3
#Python 3.7.5rc1 (default, Oct  8 2019, 16:47:45) 
#>>> import openturns
#>>> openturns.__version__
#'1.15dev'

