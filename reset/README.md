# Git katas: Git reset
We can manipulate the History very much so. We should only ever tinker with our local history. As publicly release commits must expect to be immutable.

We use reset to unstage change, but we can also do many more different things.

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## Task
1. How does your working directory look like?
1. What does your log look like?
1. Try to run `git reset --soft HEAD~1`
1. What happens to your working directory, your log and your stage?
1. Run `git reset --mixed HEAD~1`
1. What happens to your working directory, your log and your stage?
1. Run `git reset --hard HEAD~1`
1. What happens to your working directory, your log and your stage?
1. Now try to use `git revert HEAD~1`
1. What happens to your working directory, your log and your stage?
