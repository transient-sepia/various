#!/usr/bin/env bash
#

# which file to check
FILE=/tmp/plugins/topio.pl.bak
# time limit in minutes
TLIMIT="2 minutes ago"

# comparison
if [[ ! $(find ${FILE} -newermt "${TLIMIT}") ]]; then
  echo "File ${FILE} was last modified more than ${TLIMIT}."
fi
