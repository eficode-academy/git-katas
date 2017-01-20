# Git Kata: Basic Staging
## Setup:
Run ./setup.sh

## The task
You live in your own repository. There is a file called file.txt

1. What's the content of file.txt?
1. Overwrite the content in file.txt: `echo 2 > file.txt`
1. What does `git diff` tell you?
1. What does `git diff --staged` tell you?
1. Run `git add file.txt` to stage your change
1. What does `git diff` tell you?
1. What does `git diff --staged` tell you?
1. Overwrite the content in file.txt: `echo 3 > file.txt`
1. What does `git diff` tell you?
1. What does `git diff --staged` tell you?
1. Explain what is happening
1. Run `git reset HEAD file.txt` to unstage the change
1. What does git status tell you now?
1. Stage the change and make a commit
1. What does the log look like?
1. Overwrite the content in file.txt
1. What is the content of file.txt?
1. What does `git status` tell us?    
1. Run `git checkout file.txt`
1. What is the content of file.txt?
1. What does `git status` tell us?



## Useful commands
- `git add`
- `git commit`
- `git commit -m`
- `git reset`
- `git checkout`        
- `git log`
- `git log -n 5`
- `git log --oneline`
- `git log --oneline --decorate --graph`


## Aliases
You can set up aliases as such:
`git config --global alias.lol 'log --oneline --decorate --graph --all'`
This might be useful to you.
