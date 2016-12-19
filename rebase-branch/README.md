# Git Kata: rebase branch
## Setup:
Run ./setup.sh && cd exercise


## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

 1. git checkout uppercase
 2. git rebase master
 3. git lg
 4. git checkout master
 5. git merge uppercase

## Useful commands
- `git checkout <branch-name>`
- `git rebase <branch-name>`
- `git log --oneline --decorate --graph --all`
- `git merge <branchA> <branchB>`
