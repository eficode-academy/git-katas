# Git katas: Git reset
We can manipulate the History very much so. We should only ever tinker with our local history. As publicly release commits must expect to be immutable.

We use reset to unstage change, but we can also do many more different things.

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## Task
1. How does your working directory look like?
2. What does your log look like?
3. Try to run `git reset --soft HEAD~1`
4. What happens to your working directory, your log and your stage?
5. Run `git reset --mixed HEAD~1`
6. What happens to your working directory, your log and your stage?
7. Run `git reset --hard HEAD~1`
8. What happens to your working directory, your log and your stage?
9. Now try to use `git revert HEAD~1`
10. What happens to your working directory, your log and your stage?
