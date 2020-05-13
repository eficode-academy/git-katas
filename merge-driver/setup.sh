#!/bin/bash

# Include utils
source ../utils/utils.sh

kata="merge-driver"
make-exercise-repo

cp ../../utils/resources/merge-tst-files.sh merge-tst-files.sh
git add merge-tst-files.sh
git commit -m"Add merge-tst-files.sh"

echo "[P R E S E R V A T I O N]" > the-file.tst
git add the-file.tst
git commit -m"Add light side of the-file.tst"

git checkout -b feature/1 HEAD~1
echo "[R U I N]" > the-file.tst
git add the-file.tst
git commit -m"Add dark side of the-file.tst"

git checkout master
