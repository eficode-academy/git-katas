# Git Kata: Basic revert
## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You again live in your own branch, this time we will revert some change on a branch.

1. Create a branch called `reverting`
2. Checkout the branch
3. What is the output of `git branch`?
4. What is the output of `git log --oneline --graph --all`
5. Use `cat` to see the contents of the greetings
6. Revert the latest change, so you get the original content in the file
7. Use `cat` to see the contents of the greetings
8. Diff the branches

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
