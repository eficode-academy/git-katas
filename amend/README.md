# Git kata: Amending commits
When we are working, we make a lot of commits.
Sometimes we just forget something obvious that we want to fix quickly.

`git commit --amend` allows us to do that - tinker with the last commit we made.

You can use `git log -p` or `git show` to inspect the contents of commits and file changes that were added to the commits.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. What does `git status` tell us?
2. What does `git log -p` tell us?
3. Stage the addition of bar.txt
4. Run `git commit --amend`
5. What happened? What does `git log -p` tell us?
6. What happens if you run `git commit --amend` again?

## Useful commands

- `git add`
- `git log --oneline --graph`
- `git log -p`
- `git show`
- `git commit --amend`
