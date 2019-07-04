# Git kata: Git hooks
Git hooks allows us to add functionality to git by intersecting in the control of git.
In this case we want to stop our silly users from pushing to the master branch.
You can look in the `.git/hooks/` folder to see what hooks are available.
They are all named `*.sample` to prevent them from being executed.

## Task
1. Clone a repository ( or use one that you already have )
1. In the repository's `.git/hooks/` folder put the file `pre-push` that's in this repository
1. What happens when you try to push to master?
1. What happens if you try to push to a different branch?
1. What happens if you switch the if / else blocks?
