#!/usr/bin/env bash
#
# a test

export PATH=/u01/app/oracle/product/11.2/db_2/bin:/u01/app/oracle/product/11.2/db_2/OPatch:/usr/local/bin:/bin:/usr/bin

for i in `adrci exec="show homes" | grep listener`; do
  #echo "adrci exec=\"set home $i;purge\""
  adrci exec="set home $i; purge -age 10800";
  # maybe check $? here
done
