# Git Kata: Basic Ignore
## Setup:
Run ./setup.sh

## The task
You have your own branch. We'll work a bit with .gitignore

1. Create a `.s` file
1. What is the output of `git status`?
1. Create a `.gitignore` file in your working directory containing `*.s`
1. What is the output of `git status`?
1. Commit the `.gitignore` file
1. Add `txt` files to `.gitignore`
1. What does `git status` tell us?
1. Change `file1.txt`
1. What does `git status` tell us?
1. Make another textfile in the repository, what does `git status` look like now?
1. Stage the removal of `file1.txt`
1. What does `git status` say?

## Useful commands
- `git rm`
- `git add`
- `git commit`
- `git commit -m`
- `git log`
- `git log -n 5`
- `git log --oneline`
- `git log --oneline --decorate --graph`


## Aliases
You can set up aliases as such:
`git config --global alias.lol 'log --oneline --decorate --graph --all'`
This might be useful to you.
