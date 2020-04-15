# Git Kata: Git objects

Objects are stored in `<repository>/.git/objects` in subfolders matching the first two chars of the sha.
`fc1da6e8f` is therefore the file: `.git/objects/fc/1da6e8f`.

`git cat-file` inflates and shows the content of whatever _ref_ you pass it.
`-p` asks `cat-file` to pretty-print the content of an object.

`git ls-tree master .` inflates and lists the content of a folder.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

1. Using `git ls-tree` and `git cat-file`, draw the entire Git data structure.
	- What tree and blob objects do you have and what do they point at?
	- What commits point inside this graph and where?
