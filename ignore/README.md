# Git Kata: Basic Ignore
We'll work a bit with the `.gitignore` file in this kata.
In this file you can specify both file extensions and folder structures that you do not want git to track.
You can still `git add` files and folder that matches in the `.gitignore` file.

We will also work with `git rm`, which is the git remove command. `git rm` does just the same as removing a file from your working directory, and then staging that change by issuing a `git add filename` on the file that was just deleted.
Sometimes you add a file by accident that was not meant for git e.g. binary files, class files etc.
If you want to signal to git that a file needs to be removed from git, but still want it in your working directory, then use `git rm --cached` to issue a remove command on the staging area, but not in your working directory.


## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Create a file with the name `foo.s`
1. What is the output of `git status`?
1. Create a `.gitignore` file in your working directory containing `*.s`
1. What is the output of `git status`?
1. Commit the `.gitignore` file
1. Commit `file1.txt`
1. Add `txt` files to `.gitignore` by adding a line in the file containing `*.txt`
1. What does `git status` tell us?
1. Change `file1.txt`
1. What does `git status` tell us? Why was the file tracked even though the `txt` extension is in the ignore file?
1. Make another text file in the repository, what does `git status` look like now? Why is it not tracked?
1. Stage the removal of `file1.txt` with the command `git rm --cached`
1. What does `git status` say?

## Useful commands
- `git rm`
- `git add`
- `git commit`
- `git commit -m`
- `git rm --cached`


## Aliases
You can set up aliases as such:
`git config --global alias.lol 'log --oneline --graph --all'`
This might be useful to you.
