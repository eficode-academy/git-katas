#!/usr/bin/env bash
# shellcheck disable=SC1091

GREEN='\033[0;32m'
RED='\033[0;31m'
RC='\033[0m' # Reset Color
export TEST=true

echo -n "$(basename "$PWD") "
set +e
output=$(source setup.sh 2>&1);
exitcode=$?
if [ $exitcode = 0 ]; then 
  echo -e "${GREEN}OK${RC}"
else
  echo -e "${RED}FAILED${RC} $(pwd)" 
  echo "$output"
  exit 2
fi

unset TEST