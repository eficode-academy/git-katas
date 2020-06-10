#!/bin/bash

# Include utils
. ..\utils\make-exercise-repo.ps1

Copy-Item .\..\..\utils\resources\merge-tst-files.sh .
git add merge-tst-files.sh
git commit -m "Add merge-tst-files.sh"

Set-Content -Path "the-file.tst" -Value "[P R E S E R V A T I O N]"
git add the-file.tst
git commit -m "Add light side of the-file.tst"

git checkout -b feature/1 HEAD~1
Set-Content -Path "the-file.tst" -Value "[R U I N]"
git add the-file.tst
git commit -m "Add dark side of the-file.tst"

git checkout master
