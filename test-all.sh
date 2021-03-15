#!/usr/bin/env bash

basedir=$(git rev-parse --show-toplevel)

echo "Testing all kata setup scripts"

function test-setup (){
  return_code=0
  scripts=$(find . -name "setup.sh" -type f -print | sort)
  for script in ${scripts}; do
    cd "$(dirname "${script}")" || exit 2
    ../utils/test/test_setup.sh setup.sh
    exit_code=$?
    if [ ${exit_code} -ne 0 ]; then
      return_code=${exit_code}
    fi
    cd "$basedir" || exit 2
  done
  return $return_code
}

test-setup
