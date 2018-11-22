# Git Kata: Basic revert
## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You again live in your own branch, this time we will revert some change on a branch.

1. Create a branch called `reverting`
1. Checkout the branch
1. What is the output of `git branch`?
1. What is the output of `git log --oneline --graph --all`
1. Use `cat` to see the contents of the greetings
1. Revert the latest change, so you get the original content in the file
1. Use `cat` to see the contents of the greetings
1. Diff the branches

## Useful commands
- `git branch`
- `git branch <branch-name>`
- `git branch -d <branch-name>`
- `git checkout`
- `git branch -v`
- `git add`
- `git commit`
- `git commit -m`
- `git revert <sha1>`
- `git diff <branchA> <branchB>`
- `git log --oneline --graph --all`
