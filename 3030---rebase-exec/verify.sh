#! /usr/bin/env bash

cd exercise
if git log -p master | grep -q "exit 1"; then
  echo "You might have things to fix ask a trainer for help."
else
  echo "You are done"
fi
