# Git kata: Amending commits

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
7. Call `git status` one last time\
 What happened to `bar.txt`?

## Useful commands

- `git status`
- `git restore`
- `git restore --staged`
