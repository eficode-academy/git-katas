# Git Kata: Basic revert
## The task

You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. Run the command `. setup.sh`
1. Create a branch called `reverting`
1. Checkout the branch
1. What is the output of `git branch`?
1. What is the output of `git log --oneline --decorate --graph --all`
1. Use `cat` to see the contents of the greetings
1. Revert the latest change, so you get the orginal content in the file
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
- `git log --oneline --decorate --graph --all`
