# Git Kata: Basic Branching
## Setup:
Run ./setup.sh && cd exercise


## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

 1. Create a branch called greeting and check it out
 2. Edit the greeting.txt to contain an oslo-specific greeting
 3. Add greeting.txt files to staging area using patch mode
 4. Commit
 5. Switch back to the master branch
 6. Create a file README.md with information about this repository
 7. Try adding README.md file to staging area using patch mode (it wont work)
 8. What is the output of `git status`?
 9. Add the README.md file to staging area and make the commit
 10. What is the output of `git log --oneline --decorate --graph --all`
 11. Diff the branches
 8. Merge the greeting branch into master

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
