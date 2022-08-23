# git-merge-driver

This repository contains a merge tool, in the shape of a shell script, that can handle merging conflicting `.tst` files.
It also contains a feature branch with conflicting changes made to a `.tst` file.
In this exercise, we will configure the git repository to always resolve merge conflicts in `.tst` files through the `merge-tst-files.sh` script.
We'll do this by setting up `merge-tst-files.sh` as a _merge driver_ for `.tst` files.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Define the `merge-tst-files.sh` script as a merge driver in `.git/config`
2. Set the merge driver to be used for `.tst` files in `.gitattributes`
3. Add the `merge-tst-files.sh` script to PATH
4. Merge in the `feature/1` branch
5. Check the output to verify that the `merge-tst-files.sh` script was used to resolve the conflict.
6. Can you commit/push your merge driver configuration? If not, how else would you distribute it?
