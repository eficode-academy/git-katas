#!/bin/bash
# This is the entry point for shell utilities in git katas.
# The purpose of this file is to enable setup scripts in each of the katas to have a common set of utilities 
# spread over multiple files in the utils folder.

# First, guard against Error 40 if user does not invoke using source:
#if [[ $0 != *"bash"* ]]; then
#  printf "Start this script using:\n source setup.sh"
#  exit 1
#fi

export DEFAULT_BRANCH=master
# Using this weird seemingly arbitrary path to avoid path issues. 
# Please let me know the _right_ way to do this
source ../utils/make-exercise-repo.sh
source ../utils/make-fake-remote.sh
source ../utils/clone-remote-to-exercise.sh
source ../utils/make-setup.sh
