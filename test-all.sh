#!/usr/bin/env bash
GREEN='\033[0;32m'
RED='\033[0;31m'
RC='\033[0m' # Reset Color

basedir=$(git rev-parse --show-toplevel)

echo "Testing all kata setup scripts"

function test-setup (){
  return_code=0
  failed=0
  total=0
  scripts=$(find . -name "setup.sh" -type f -print | sort)
  for script in ${scripts}; do
    ((total++))
    cd "$(dirname "${script}")" || exit
    ../utils/test/test_setup.sh setup.sh
    exit_code=$?
    if [ ${exit_code} -ne 0 ]; then
      return_code=${exit_code}
      ((failed++))
    fi
    cd "$basedir" || exit
  done

  if [ ${return_code} -ne 0 ]; then
    echo -e "${RED}Failed $failed${RC} of $total tests."
  else
    echo -e "All $total tests completed ${GREEN}successfully.${RC}"
  fi
  return $return_code
}

test-setup
