# Git kata: Git hooks

Git hooks allows us to add functionality to Git by injected scripts in the control flow of Git.

In this case, we want to stop users from pushing to the `master` branch.

You can look in the `.git/hooks/` folder to see what hooks are available.

They are all named `*.sample` to prevent them from being executed.
## Setup

- run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

1. Put the `pre-push` hook into the hooks folder with the command `cp pre-push ./.git/hooks/pre-push`
2. What happens when you try to push to `master`?
3. What happens if you try to push to a different branch on the remote?
4. What happens if you switch the if / else blocks in `./.git/hooks/pre-push`?
