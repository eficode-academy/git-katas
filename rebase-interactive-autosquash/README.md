# Git katas: Interactive rebase with --autosquash option
You have worked on a new feature called Hello World.
This features ends up being complete with both documentation and unit test, but there is a typo in the documentation.

You need to fix it and then rebase to have a beautiful history.

Luckily we have a release tag `v0.0` from just before we started the feature.

There is a way to easily fix it with advanced options for `git commit` and `git rebase`.

## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

1. Explore the repo and the history so you know when the documentation file was added.
2. Fix `README.md` file and add it.
3. Add your commit by using `git commit --fixup=<commit id to be fixed>`.
4. Use `git rebase --autosquash --interactive v0.0` to view the rebase recipe automatically generated.
5. Use `git log` to view your new beautiful history.

### useful commands

- `ls -l`                           # list files
- `tail -n +1 *`                    # show content of all files
- `git log --oneline`               # show history
- `git log --stat`                  # log which files changed
- `git log --patch`                 # log with diff
- `git show <commit id>`            # show changes of a commit
- `git add`                         # add file
- `git commit --fixup=<commit id>`  # commit by autogenerating the message
- `git rebase -i <ref>`             # run the interactive rebase back to <ref> and automaticaly reorder commits
