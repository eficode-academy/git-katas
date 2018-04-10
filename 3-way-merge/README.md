# Git Kata: 3-Way Merge

## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. Run `. setup.sh`
1. Create a branch called greeting and check it out
1. Edit the greeting.txt to contain your favorite greeting
1. Add greeting.txt files to staging area using patch mode (`-p`)
1. Commit
1. Switch back to the master branch
1. Create a file README.md with information about this repository
1. Try adding README.md file to staging area using patch mode (it wont work)
1. What is the output of `git status`?
1. Add the README.md file to staging area and make the commit
1. What is the output of `git log --oneline --decorate --graph --all`?
1. Diff the branches
1. Merge the greeting branch into master

## Useful commands
- `git branch`
- `git branch <branch-name>`
- `git branch -d <branch-name>`
- `git checkout <branch-name>`
- `git checkout -b <branch-name>`
- `git branch -v`
- `git add`
- `git add -p`
- `git commit`
- `git commit -m`
- `git merge <branchA> <branchB>`
- `git diff <branchA> <branchB>`
- `git log --oneline --decorate --graph --all`
