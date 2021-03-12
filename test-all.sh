#!/usr/bin/env bash

echo "Testing all kata setup scripts"
find -s . -name "setup.sh" -type f -execdir ../utils/test/test_setup.sh  \;
