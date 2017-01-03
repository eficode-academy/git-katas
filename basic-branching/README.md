# Git Kata: Basic Branching
## Setup:
Run ./setup.sh

## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

- `cd exercise`
- Use `git branch to see the two branches that are relevant for this exercise
- What branch are you on?
- use `git branch <branch-name>` to create a new branch
- use `git checkout <branch-name>` to switch to your new branch
- How does the output from `git status` change when you switch between the master and the new branch that you have created?
- How does the workspace change when you change between the two branches?
- In the branch you created, create a file called `file1.txt`.
- Add your name to the file, make a commit with this change.
- Merge the `basic-branching-master` onto your current branch.
- Checkout `basic-branching-master`, merge your branch onto this master branch
- What happened?
- Merge the `basic-branching-second-branch` onto your master branch
- Resolve the merge conflict ( `git status` always helps you )
- Having resolved the merge conflict take a look at `git log` and see what happened.
- Draw what happened!

## Useful commands
- `git checkout`
- `git checkout -b`
- `git log --oneline --decorate --graph`
- `git merge <branch>`
