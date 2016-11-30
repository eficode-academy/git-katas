# Git Kata: Basic Staging
## Setup:
Run ./setup.sh

## The task
You live in your own repository. There is a file called file.txt

- What's the content of file.txt?
- Overwrite the content in file.txt: `echo 2 > file.txt`
- What does `git diff` tell you?
- What does `git diff --staged` tell you?
- Run `git add file.txt` to stage your change
- What does `git diff` tell you?
- What does `git diff --staged` tell you?
- Overwrite the content in file.txt: `echo 3 > file.txt`
- What does `git diff` tell you?
- What does `git diff --staged` tell you?
- Explain what is happening
- Run `git reset HEAD file.txt` to unstage the change
- What does git status tell you now?
- Stage the change and make a commit
- What does the log look like?
- Overwrite the content in file.txt
- What is the content of file.txt?
- What does `git status` tell us?    
- run `git checkout file.txt`
- What is the content of file.txt?
- What does `git status` tell us?
          
                           

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
