# Git Kata: Rebase Multiple

## Setup:

Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Tasks

In this exercise, we will see how `merge` and `rebase` differ when our branches (`incremental-change-[merge/rebase]`) has multiple commits ahead of the base branch (`master`).

1. Check out how the tree looks using `git log --oneline --graph --all`.
2. Switch to branch `incremental-change-merge`.
3. Use `git diff` to see the differences.
4. Use `git merge` to incorporate new changes from `master` to `incremental-change-merge`.
5. Resolve the conflicts and *continue* merge operation.
6. See how the tree looks like now?
7. Switch to branch `incremental-change-rebase`. This branch is basically an initial copy of `incremental-change-merge`.
8. Use `git rebase` to incorporate new changes from `master` to `incremental-change-rebase`.
9. Resolve the conflicts (multiple times).
10. See how the tree looks like now?

## Relevant commands
- `git log --oneline --graph --all`
- `git diff`
- `git merge`
- `git rebase`
- `git status`
