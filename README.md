# Git Katas
In this repository you find a bunch of git exercises.
The concept is stolen without shame from [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/).
They have unfortunately not maintained the system - and I feel like we need more good git-exercises.

Remember to think about what you do. I recommend drawing the before
and after state of each of the katas that you solve. Most of the
understanding of git is very well purveyed by illustrations.

Each kata resides in their own branch.

You can `git checkout kataname` to get to the kata.

Setup the kata afterwards by running `./setup.sh` when the kata you want to do is checked out.

The `README.md` will be updated to reflect the current kata.
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