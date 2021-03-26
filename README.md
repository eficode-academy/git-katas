---
maintainer: randomsort
---
# Git Katas

## Quick Start

### In the Cloud

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/praqma-training/git-katas.git)

### On Your Local Machine

![Quick Start](/images/quickstart.gif)

- Clone this repository
- Go into the folder you want to solve an exercise in
- Run the `setup.sh` script
- Consult the README.md in that folder to get a description of the exercise

## Purpose of Git Katas

This repository is a collection of Git exercises.
The concept is stolen without shame from [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/).
Unfortunately, they have not maintained the system - and we need more good Git exercises.

The exercises are designed for use when we are teaching Git courses. You should be able to use them as self-contained exercises that will allow you to keep your Git skills sharp.

Exercises starting with _basic_ are entry-level - other exercises vary greatly in difficulty.

To get an overview of the exercises in here look in [Overview.md](Overview.md).

Feel free to use these exercises, that's why they're public!

## Suggested Learning Path

If you are coming to this repository for some basic Git knowledge, we recommend going through the exercises in the following order.
This is the order that Jan Krag at Praqma teaches Git and might change over time. There are more exercises than this, but these should take you through
everything you need to be able to use Git effectively in your day to day life.

- [Basic Commits](./basic-commits/README.md)
- [Basic Staging](./basic-staging/README.md)
- [Investigation](./investigation/README.md)
- [Basic Branching](./basic-branching/README.md)
- [Fast Forward Merge](./ff-merge/README.md)
- [3 way Merge](./3-way-merge/README.md)
- [Merge Mergesort](./merge-mergesort/README.md)
- [Rebase Branch](./rebase-branch/README.md)
- [Basic Revert](./basic-revert/README.md)
- [Reset](./reset/README.md)
- [Basic Cleaning](./basic-cleaning/README.md)
- [Amend](./amend/README.md)
- [Reorder the History](./reorder-the-history/README.md)
- [Advanced Rebase Interactive](./advanced-rebase-interactive/README.md)
- [Rebase using autosquash](./rebase-interactive-autosquash/README.md)
- [Basic Stashing](./basic-stashing/README.md)

See [Overview.md](Overview.md) for a more complete list and suggested order.

## Contributing

If you miss exercises or find errors in any of them, feel free to improve them and make a pull request.

You can also make an issue so we notice an opportunity to improve!

Thank you!

## Cheatsheet

A collection of useful commands to use throughout the exercises:

```shell
# Initializing an empty git repository.
git init            # Initialize an empty git repository under current directory.

# Cloning a repository
git clone https://github.com/praqma-training/git-katas.git      # Clone this repository to your current working directory

# Git (user and repo level) configurations
git config --local user.name "Repo-level Username"          # For setting a local git repo level user name.
git config --local user.email "Repo-level.Email@Example.com" # For setting a local git repo level user email.
                                                            # --global -> User level git config stored in <user-home>/.gitconfig for e.g. ~/.gitconfig
                                                            # --local -> repo level config stored in repo's main dir under .git/config


# See local changes
git status                  # Show the working tree status
git diff                    # Show changes current working directory (not yet staged)
git diff --cached           # Show changes currently staged for commit

# Add files to staging (before a commit)
git add myfile.txt          # Add myfile.txt to stage
git add .                   # Add entire working directory to stage

# Make a commit
git commit                              # Make a new commit with the changes in your staging area. This will open an editor for a commit message.
git commit -m "I love documentation"    # Make a new commit with a commit message from the command line
git commit -a                           # Make a new commit and automatically "add" changes from all known files
git commit -am "I still do!"            # A combination of the above
git commit --amend                      # Re-do the commit message of the previous commit (don't do this after pushing!)
                                        #   We _never_ change "public history"
git reset <file>                        # Unstage a staged file leaving in working directory without losing any changes.
git reset --soft [commit_hash]          # resets the current branch to <commit>. Does not touch the staging area or the working tree at all.
                                        # --hard mode would discard all changes.

# Configuring a different editor
## Avoid Vim but stay in terminal:
- `git config --global core.editor nano`

## For Windows:
- Use Notepad:
`git config --global core.editor notepad`

- or for instance Notepad++:
`git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`


# See history
git log             # Show commit logs
git log --oneline   # Formats commits to a single line (shorthand for --pretty=oneline  --abbrev-commit )
git log --graph     # Show a graph commits and branches
git log --pretty=fuller     # To see commit log details with author and committer details, if any different.
git log --follow <file>     # List the history of a file beyond renames
git log branch2..branch1    # Show commits reachable from branch1 but not from branch2

# Deferring
git stash                               # Stash (store temporarily) changes in working branch and enable checkingout a new branch
git stash list                          # List stored stashes.
git stash apply <stash>                 # Apply given <stash>, or if none given the latest from stash list.


# Working with Branches
git branch my-branch       # Create a new branch called my-branch
git checkout my-branch     # Checkout ("Switch" to work on) my-branch
git checkout -b my-branch  # Create a new branch called my-branch AND switch to it
git branch -d my-branch    # Delete branch my-branch that has been merged with master
git branch -D my-branch    # Forcefully delete a branch my-branch that hasn't been merged to master

# Merging
git merge master         # Merge the master branch into your currently checked out branch.
git rebase master        # Rebase current branch on top of master branch

# Working with Remotes
git remote              # Show your current remotes
git remote -v           # Show your current remotes and their URLs
git push                # Publish your commits to the upstream master of your currently checked out branch
git push -u origin my-branch  # Push newly created branch to remote repo setting up to track remote branch from origin.
                              # No need to specify remote branch name, for e.g., when doing a 'git pull' on that branch.
git pull                # Pull changes from the remote to your currently checked out branch

# Re/moving files under version control
git rm <path/to/the/file>                 # remove file and stage the change to be committed.
git mv <source/file> <destination/file>   # move/rename file and stage the change to be committed.

# Aliases - it's possible to make aliases of frequently used commands
#   This is often done to make a command shorter, or to add default flags

# Adding a shorthand "co" for "checkout"
git config --global alias.co "checkout"
# Usage:
git co      # Does a "git checkout"

## Logging
git log --graph --oneline --all # Show a nice graph of the previous commits
## Adding an alias called "lol" (log oneline..) that shows the above
git config --global alias.lol "log --graph --oneline --all"
## Using the alias
git lol     # Does a "git log --graph --oneline --all"
```

## Testing

There is a very small test that you can run in powershell or bash.
It is contained in the scripts `test.sh` and `test.ps1`.

### Cleanup
You can remove testing artifacts, `exercise` directories, with the git clean command:
```sh
git clean -ffdX
```
