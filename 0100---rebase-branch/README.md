# Git Kata: rebase branch

## Setup:
1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)


## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. Which branches exist?
1. Look at the log for the master branch
1. Check out the uppercase branch
1. How does the log compare to the log on the master branch?
1. Rebase your uppercase branch with the master (`git rebase master`)
1. What did just happen? Draw it!
1. Now checkout the master branch
1. Merge uppercase into master
1. What does the log look like now?

## Useful commands
- `git checkout <branch-name>`
- `git rebase <branch-name>`
- `git log --oneline --graph --all`
- `git merge <branch-name>`
