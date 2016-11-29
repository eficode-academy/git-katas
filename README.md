# Git Katas
In this repository you find a bunch of git exercises.
The concept is stolen without shame from [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/).
They have unfortunately not maintained the system - and I feel like we need more good git exercises.

Each kata resides in its own branch.

You can `git checkout kataname` to get to the kata.

When the kata you want to do is checked out, set it up by running `./setup.sh`.

The `README.md` will be updated to reflect the current kata.

If you are confused about git - the best place to start is `git checkout basic-commits`.

## Useful commands
These are the commands that you might need:
- `git checkout <branch-name>`
- `git branch -r`
- Use `git branch --list basic*` to see the two branches that are relevant for this exercise
- What branch are you on?
- use `git branch <branch-name>` to create a new branch
- use `git checkout <branch-name>` to switch to your new branch
- How does the output from `git status` change when you switch between the master and the new branch that you have created?
- How does the workspace change when you change between the two branches?
- In the branch you created, create a file called `file1.txt`.
- Add your name to the file, make a commit with this change.
- Merge the `basic-branching-master` onto your current branch.
- Checkout `basic-branching-master`, merge your branch onto this master branch
- What happened?
- Merge the `basic-branching-second-branch` onto your master branch
- Resolve the merge conflict ( `git status` always helps you )
- Having resolved the merge conflict take a look at `git log` and see what happened.
- Draw what happened!


## Aliases
You can set up aliases as such:
`git config --global alias.lol log --oneline --decorate --graph --all`

This might be useful to you.
