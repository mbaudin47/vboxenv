[![CircleCI](https://circleci.com/gh/mbaudin47/vboxenv.svg?style=svg)](https://circleci.com/gh/mbaudin47/vboxenv)

# vboxenv
Virtual Box Environment For OpenTURNS

This repository gathers a set of scripts which allows to build OpenTURNS from scratch. 

Two methods are provided:
* building from Debian packages,
* building from Conda packages.

## Building from Debian packages


The following script:
* installs OpenTURNS dependencies from Debian/Ubuntu packages
* installs Python from Debian/Ubuntu packages
* installs Chaospy from pip
* downloads and builds COIN/Bonmin
* git clones the repository
* builds OpenTURNS from Debian/Ubuntu packages

```
bash get_and_build_openturns.sh
```

## Building from Conda packages

The previous sequence can also be used for Conda packages, with some differences.


* Installs Miniconda :

```
bash get_miniconda.sh
```

* Install OpenTURNS and its build dependencies from conda:

```
bash config_conda.sh
```

* Build OpenTURNS from Conda packages:

```
bash build_openturns_conda.sh
```

