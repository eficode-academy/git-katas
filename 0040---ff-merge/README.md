# Git Kata: Fast-forward Merge
## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. Create a branch called uppercase
1. Checkout the branch
1. What is the output of `git status`?
1. Edit the greeting.txt to contain an uppercase greeting
1. Add greeting.txt files to staging area and commit
1. What is the output of `git branch`?
1. What is the output of `git log --oneline --graph --all`
1. Checkout `master` branch
1. Use `cat` to see the contents of the greetings
1. Diff the branches
1. Merge the branches
1. Use `cat` to see the contents of the greetings
1. Delete the uppercase branch

## Useful commands
- `git branch`
- `git branch <branch-name>`
- `git branch -d <branch-name>`
- `git checkout`
- `git branch -v`
- `git add`
- `git commit`
- `git commit -m`
- `git merge <branch>`
- `git diff <branchA> <branchB>`
- `git log --oneline --graph --all`
