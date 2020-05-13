# Git Kata: Save my commit

In this repository we had added the holy grail in `holygrail.txt`. Unfortunately, we reset our `master` branch to the initial commit. Now it is time to recover from the mistake.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

We just reset the `master` branch to the initial commit. We will recover the lost work.

1. Use `git log` to see that the history is brief
2. Use `ls` to verify that `holygrail.txt` is not in the workspace
3. Use `git reflog` to find the commit that added `holygrail.txt`
4. Use `git reset --hard` to recover our history and work
5. Use `git log` and `ls` to see the recovered work
6. Undo your solution by running `git reset --hard initial-commit`
7. Use `git cherry-pick` to restore `holygrail.txt`
8. Compare history and workspace to the solution using reset
9. Again, undo your solution using `git reset --hard initial-commit` 
10. Force the Git garbage collector to run with `git gc`
11. Try to restore the holy grail using one of the previous solutions

## Relevant git commands
- `git reflog`
- `git cherry-pick`
- `git reset --hard`
- `git log`
