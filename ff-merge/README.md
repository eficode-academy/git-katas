# Git Kata: Basic Branching
## Setup:
Run ./setup.sh && cd exercise


## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

 1. Create a branch called uppercase
 2. Checkout the branch
 3. What is the output of `git status`?
 4. Edit the greeting.txt to contain an uppercase greeting
 5. Add greeting.txt files to staging area and commit
 6. 3. What is the output of `git branch`?
 6. What is the output of `git log --oneline --decorate --graph --all`
 7. Checkout `master` branch
 8. Use `cat` to see the contents of the greetings
 9. Diff the branches
 10. Merge the branches
 11. Use `cat` to see the contents of the greetings
 12. Delete the uppercase branch

## Useful commands
- `git branch`
- `git branch <branch-name>`
- `git branch -d <branch-name>`
- `git checkout`
- `git branch -v`
- `git add`
- `git commit`
- `git commit -m`
- `git diff <branchA> <branchB>`
- `git log --oneline --decorate --graph --all`
