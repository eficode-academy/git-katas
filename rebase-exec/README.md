# Rebase Exec

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

Verify commits before push

run the tests on every commit since the initial commit

`git rebase -i --exec test.sh initial-commit`

Amend the broken commit and continue rebasing.
