# Rebase Exec

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

### Example 1:
Adding content to file in last 3 commits using `git rebase -i --exec <command(s)> HEAD~3`.

1. Run `git log --patch` command to see what changes are include in last commit.
2. Run `git rebase -i --exec "echo '1' >> 4.txt && git add 4.txt && git commit --amend --no-edit" HEAD~3` command it will open configured editor with information what command will be executed for each commits which is notified by `exec <command>` you can either modify the command or save and exit the editor to let the command run for that specific commit.
3. Run `git log --patch` command to see what are the changes in commits.

### Example 2:
Change the author for all the commits using `git rebase -i --exec`.

1. Run `git log --format="commit: %H%nauthor: %an%n"` command to see detail related to commit and author.
2. Run `git rebase -i --root --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit"` command it will open configured editor with information what command will be executed for each commits which is notified by `exec <command>` you can either modify the command or save and exit the editor to let the command run for that specific commit.
3. Run `git log --format="commit: %H%nauthor: %an%n"` command to see the changes author information for the commits.

## Useful commands

- `git log --patch`
- `git rebase -i --exec "echo '1' >> 4.txt && git add 4.txt && git commit --amend --no-edit" HEAD~3`
- `git log --format="commit: %H%nauthor: %an%n"`
- `git rebase -i --root --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit"` or `git rebase -i --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit" first-commit`