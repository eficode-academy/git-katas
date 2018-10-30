#! /usr/bin/env sh

cd exercise
if [[ "$(git log -1 --format='%s' refs/bisect/bad -- )" = '22' ]] ; then
  echo "You managed to find the bad commit with bisect"
else
  echo "You have still stuff to do"
  echo "did you stop when git found the bad commit"
fi

