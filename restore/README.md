# Git kata: Restoring files

We all make mistakes. Sometimes we make changes we'd rather not have made, or accidentally stage changes we didn't intend to stage.
This is where `git restore` comes into play.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Call `git status`\
 What changes were made to this repository?
2. Restore the `foo.txt` file using `git restore foo.txt`
3. Call `git status` again\
 What happened to `foo.txt`?
4. Unstage the changes to `bar.txt` using `git restore --staged bar.txt`
5. Call `git status` once more\
 What happened to `bar.txt`?
6. Restore the `bar.txt` file using `git restore bar.txt`
7. Call `git status` once more\
 What happened to `bar.txt`?
8. Call `git log --oneline`\
 Do you spot the tag?
9. Restore `foo.txt`'s contents to their previous version using `git restore -s v1.0.0 foo.txt`
10. Call `git status` one last time\
 What happened to `foo.txt`?

## Useful commands

- `git status`
- `git log --oneline`
- `git restore`
- `git restore --staged`
