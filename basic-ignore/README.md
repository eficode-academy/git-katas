# Git Kata: Basic Ignore
## Setup:
Run ./setup.sh

## The task
You have your own branch. We'll work a bit with .gitignore

- Create a `.s` file
- What is the output of `git status`?
- create a `.gitignore` file in your working directory containing `*.s`
- What is the output of `git status`?
- Commit the `.gitignore` file
- Add `txt` files to `.gitignore`
- What does `git status` tell us?
- Change `file1.txt`
- What does `git status` tell us?
- Make another textfile in the repository, what does `git status` look like now?
- Stage the removal of `file1.txt`
- What does `git status` say?

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