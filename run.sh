#!/bin/bash
export NDCTL_ENABLE=n
export LD_LIBRARY_PATH=~/pmcheck/bin/:~/pmdk/src/debug/
# For Mac OSX
export DYLD_LIBRARY_PATH=~/pmcheck/bin/:~/pmdk/src/debug/
export PMCheck="-dfoo -x1 -p1 -y -e -r2000 -a100"
echo "./run.sh ./memcached"
echo $@

$@
