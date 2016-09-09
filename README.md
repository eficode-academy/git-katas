# Git Katas
In this repository you find a bunch of git exercises.

Each kata resides in their own branch.

You can `git checkout kataname` to get to the kata.

Setup the kata by running `./setup.sh` when the kata you want to do is checked out.

## Useful commands
These are the commands that you might need

- `git rebase -i`
- `git merge`
- `git log`
- `git log --oneline`
- `git log --oneline --decorate --graph --all`
- `git cherry-pick`
- `git diff`
- `git diff --staged`
- `git cat-file <ref>`
- `git add -p`
- `git reflog`

## Aliases
You can set up aliases as such:
`git config --global alias.lol log --oneline --decorate --graph --all`
This might be useful to you.