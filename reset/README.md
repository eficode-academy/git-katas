# Git katas: Git reset
We can manipulate the History very much so. We should only ever tinker with our local history. As publicly release commits must expect to be immutable.

We use reset to unstage change, but we can also do many more different things.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

1. How does your working directory look like?
2. What does your log look like? What does your stage look like?
3. Try to run `git reset --soft HEAD~1`
4. What happens to your working directory, your log and your stage?
5. Run `git reset --mixed HEAD~1`
6. What happens to your working directory, your log and your stage?
7. Run `git reset --hard HEAD~1`
8. What happens to your working directory, your log and your stage?
9. Now try to use `git revert HEAD~1`
10. What happens to your working directory, your log and your stage?

## Useful commands

- `git log --oneline`
- `git commit --amend`
- `git status`
- `git reset --soft`
- `git reset --mixed`
- `git reset --hard`
- `git revert`

## Further explanation

The following is taken from Recap section of [https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified].
The reset command overwrites these three trees in a specific order, stopping when you tell it to:
1. Move what the branch HEAD points to (stop here if --soft)
2. Make the stage look like HEAD (stop here unless --hard)
3. Make the working directory look like the stage
