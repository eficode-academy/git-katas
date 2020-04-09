# Git Kata: rebase branch

## Setup:
1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)


## The task
You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git.

1. Which branches exist?
2. Look at the log for the master branch
3. Check out the uppercase branch
4. How does the log compare to the log on the master branch?
5. Rebase your uppercase branch with the master (`git rebase master`)
6. What did just happen? Draw it!
7. Now checkout the master branch
8. Merge uppercase into master
9. What does the log look like now?

## Useful commands
- `git checkout <branch-name>`
- `git rebase <branch-name>`
- `git log --oneline --graph --all`
- `git merge <branch-name>`
