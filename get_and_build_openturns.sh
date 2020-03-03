# Michaël Baudin
# This gets and builds OpenTURNS on Python 3 using Ubuntu packages only

set -xe

bash install-openturns-dependencies.sh
bash install-openturns-python-dependencies.sh
bash get_chaospy.sh
bash build_bonmin.sh
git clone https://github.com/mbaudin47/openturns.git
bash build_openturns_ubuntu.sh

