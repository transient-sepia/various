#!/bin/bash
#
# wrapper-chan
# version 1.0
#
# / i should go. /
#

# export oracle env
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=${ORACLE_BASE}/product/11.2/db_1
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib

# putting together
command=""
for argv in $*; do
   command="$command $argv"
done

# run
$command
