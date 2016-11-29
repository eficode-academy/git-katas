# Git Kata: Basic Commits
## The task
You live in your own branch now.
- run ./setup.sh    
- Use `git status` to see what branch you are on.
- What does `git log` look like?
- Create a file
- How does the output from `git status` look like now?
- `add` the file to the staging area
- How does `git status` look now?
- `commit` the file to the repository
- How does `git status` look now?
- Change the content of the file that you created earlier
- How does `git status` look like now?
- `add` the file change
- How does `git status` look like now?
- Change the file again
- Make a `commit`
- How does the `status` look like now? The `log`?
- Commit the newest change

## Useful commands
- `git add`
- `git commit`
- `git commit -m`
- `git log`
- `git log -n 5`
- `git log --oneline`
- `git log --oneline --decorate --graph`


## Aliases
You can set up aliases as such:
`git config --global alias.lol log --oneline --decorate --graph --all`
This might be useful to you.