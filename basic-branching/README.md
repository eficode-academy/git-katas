# Git Kata: Basic Branching
## Setup:
Run ./setup.sh

## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. `cd exercise`
1. Use `git branch` to see the two branches that are relevant for this exercise
1. What branch are you on?
1. Use `git branch <branch-name>` to create a new branch
1. Use `git checkout <branch-name>` to switch to your new branch
1. How does the output from `git status` change when you switch between the master and the new branch that you have created?
1. How does the workspace change when you change between the two branches?
1. In the branch you created, create a file called `file1.txt`.
1. Add your name to the file, make a commit with this change.
1. Merge the `basic-branching-master` onto your current branch.
1. Checkout `basic-branching-master`, merge your branch onto this master branch
1. What happened?
1. Merge the `basic-branching-second-branch` onto your master branch
1. Resolve the merge conflict ( `git status` always helps you )
1. Having resolved the merge conflict take a look at `git log` and see what happened.
1. Draw what happened!

## Useful commands
- `git checkout`
- `git checkout -b`
- `git log --oneline --decorate --graph`
- `git merge <branch>`
