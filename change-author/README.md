# Git Kata: change author

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)


## The task

You finally convinced yourself that you should start with the open source project idea you've cherished for so long.
But alas, you realized after the first few commits that you forgot to setup your username and email.

Your workplace is kind enough to let you use your work computer to contribute to open source projects, but this also means that your new git repo used the global config on your machine, i.e. your work name and email.
On top of all that you've already pushed the first few commits to your remote repository.

No worries, you remember something about [setting up configs](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration), [rebasing](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History).

You also remember that changing the config will only change the `committer` of a commit but not its `author`, so you'll also need to [set](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---authorltauthorgt) or [reset](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---reset-author) the author.
You know that you need to rebase all the way from the the [root commit](https://git-scm.com/docs/git-rebase#Documentation/git-rebase.txt---root).

Thankfully you just started the project so you can still [force push](https://git-scm.com/docs/git-push#Documentation/git-push.txt--f) without fear of messing up ([The Perils of Rebasing](https://git-scm.com/book/en/v2/Git-Branching-Rebasing)) someone elses local repo.

## Useful commands
- `git config --local user.name "my name"`
- `git config --local user.email "myemail@home.com"`
- `git rebase -i --root`
- `git commit --amend --author="my name <myemail@home.com>" --no-edit`
- `git commit --amend --reset-author --no-edit`
- `git rebase --continue`
- `git push --force`
