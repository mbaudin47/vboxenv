# Get OPT++
# Get sources on https://software.sandia.gov/opt++/opt++_download.html
cd optpp-2.4
mkdir build
../configure --prefix=$PWD/install
make -j4
make check
make install


