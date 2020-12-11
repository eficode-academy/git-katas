# gitkatas
## Kata 7: Reordering history
The commits here have obviously been made by a mad man.
Unfortunately they actually contain useful information - it's just that the history is weird.
You should fix this such that our `git log` looks great!

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

The commit history looks out of order. `git rebase --interactive` to reorder them. The desired order is sorted numerically by commit message. 

1. Use `git log --oneline --graph` to view the commits
2. Also try `git reflog` to view the commits. `git reflog` defaults to `git reflog show` and this is an alias for `git log -g --abbrev-commit --pretty=oneline`
3. Use `git rebase -i START` to reorder the commits. There are commments in the file you edit that explain the commands available.
4. Use `git log --oneline --graph` to view the result

### useful commands

- `git rebase -i <after-this-commit>`
- `git log --oneline --graph`
- `git reflog`
