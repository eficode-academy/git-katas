# Git Kata: Basic revert
## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

In this task a few changes snuck in, that we'd like to get out. Our history is public, so we can't just change it. Rather we need to use revert to remove the unwanted changes in a safe way.

1. Use `git log --decorate --oneline` to look at the history
2.  Use `cat` to view the content of `greeting.txt`
3.  Use `git revert` on the newest commit, to remove the changes the last commit added
4.  Use `git log --decorate --oneline` to view the history
5.  Did the revert command add or remove a commit?
6.  Use `cat` to view the content of `greeting.txt`
7.  Use `ls` to see the content of the workspace
8.  Use `git log --decorate --oneline` to find the sha of the commit adding credentials to the repository
9.  Use `git revert` to revert the commit that added the credentials
10. Use `git log --decorate --oneline` to view the history
11. Use `ls` to see the content of the workspace
12. How many commits were added or changed by the last revert?
13. Use `git show` with the sha of the commit you reverted to see that the credentials file is stilll in the history
14. As you have now reverted the credentials file, so it is removed from your working directory, is it also removed from git?

## Useful commands
- `git revert <ref>`
- `git log --decorate --oneline`
- `git show <ref>`
