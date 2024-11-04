# Rebase Exec

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

### Example 1:
Adding content to file in last 3 commits using `git rebase -i --exec <command(s)> HEAD~3`.

1. Run the `git log --patch` command to see what changes are included in the last commit.
2. Run the following command:
   ```
   git rebase -i --exec "echo '1' >> 4.txt && git add 4.txt && git commit --amend --no-edit" HEAD~3
   ```
   This will open a configured editor with information about what command will be executed for each commit, notified by `exec <command>`. You can either modify the command or save and exit the editor to let the command run for that specific commit.
3. Run the `git log --patch` command to see what the changes are in the commits.

### Example 2:
Change the author for all the commits using `git rebase -i --exec`.

1. Run the `git log --format="commit: %H%nauthor: %an%n"` command to see details related to the commit and author.
2. Run the following command:
   ```
   git rebase -i --root --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit"
   ```
   This will open a configured editor with information about what command will be executed for each commit, notified by `exec <command>`. You can either modify the command or save and exit the editor to let the command run for that specific commit.
3. Run the `git log --format="commit: %H%nauthor: %an%n"` command to see the changes in the author information for the commits.

## Useful commands

- `git log --patch`
- `git rebase -i --exec "echo '1' >> 4.txt && git add 4.txt && git commit --amend --no-edit" HEAD~3`
- `git log --format="commit: %H%nauthor: %an%n"`
- `git rebase -i --root --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit"` or `git rebase -i --exec "git commit --amend --author='my name <myemail@home.com>' --no-edit" first-commit`