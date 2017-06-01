# Git Kata: Basic Branching
## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.
Hint: `git checkout` will make you switch from one branch to another.

1. Run the script setup.sh: `./setup.sh`
1. `cd exercise`
1. Use `git branch` to see the two branches that are relevant for this exercise
1. What branch are you on?
1. Use `git branch mybranch` to create a new branch called mybranch
1. Use `git branch` again to see the new branch created
1. Use `git checkout mybranch` to switch to your new branch
1. How does the output from `git status` change when you switch between the master and the new branch that you have created? 
1. How does the workspace change when you change between the two branches?
1. In the branch you created, create a file called `file1.txt`.
1. Add your name to the file, make a commit with this change.
1. Use `git log --oneline --decorate --graph` to see your branch pointing to the new commit.
1. Switch back to the branch called master
1. Make a new file called file2.txt
1. Add and commit that file
1. Use `git log --oneline --decorate --graph --all` to see your branch pointing to the new commit, and that the two branches now have different commits on them.
1. Checkout mybranch
1. What happened to your working directory? Can you see your file2.txt?
1. Use `git diff mybranch master` to see the difference between the two branches.

## Useful commands
- `git checkout`
- `git checkout -b`
- `git log --oneline --decorate --graph`
- `git branch`
- `git diff`

