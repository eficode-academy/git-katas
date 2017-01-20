# Git Kata: Basic Commits
## The task

1. Run ./setup.sh
1. `cd exercise`
1. Use `git status` to see which branch you are on.
1. What does `git log` look like?
1. Create a file
1. What does the output from `git status` look like now?
1. `add` the file to the staging area
1. How does `git status` look now?
1. `commit` the file to the repository
1. How does `git status` look now?
1. Change the content of the file you created earlier
1. What does `git status` look like now?
1. `add` the file change
1. What does `git status` look like now?
1. Change the file again
1. Make a `commit`
1. What does the `status` look like now? The `log`?
1. Commit the newest change

## Useful commands
- `git add`
- `git commit`
- `git commit -m`
- `git log`
- `git log -n 5`
- `git log --oneline`
- `git log --oneline --decorate --graph`
- `touch filename` to create a file
- `echo content > file` to overwrite file with content
- `echo content >> file` to append file with content


## Aliases
You can set up aliases as such:
`git config --global alias.lol 'log --oneline --decorate --graph --all'`
This might be useful to you.
