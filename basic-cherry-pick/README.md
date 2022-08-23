# Git Kata: Basic Cherry Pick

In this task we want have two branches, master and feature. We have worked and progressed on both branches seperately. However, there are a few changes on the feature branch that we want to take and add onto the master branch. Without getting the entire changeset from the feature branch.

Git has functionality for this "take-just-these-changes" and it is called `cherry-pick`.
You tell Git which commits you would like to cherry pick and Git will add those commits onto your branch's commit history.

Git can cherry pick either a single commit or a range of commits from a branch.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task


We currently have this git history in our exercise repository :

    A - B - C - D         master
          \
            E - F - G - H feature 

As you can see the `feature` branch and the `master` branch have progressed with different commits. We want to cherry pick the commits F and G and add them onto the master branch, so that our Git history looks like this:

    A - B - C - D - F - G master
          \
            E - F - G - H feature

1. Use `git log --decorate --oneline --graph --all` to look at the history
2. Use `cat` to view the content of `names.txt`. This file is changed in commit F
3. Use `cat` to view the content of `sentence.txt`. This file is changed in commit G
4. Use `git cherry-pick <commit_hash_F>` to cherry pick just the F commit onto your branch
5. Use `git log --decorate --oneline` to see the change to the history and that commit F should now be the newest commit on the master branch
6. Use `cat` to view the content of `names.txt` look how it has now changed!
7. Use `git reset --hard HEAD^` to delete that cherry picking from the history so that we can now try again and cherry pick a range of commits
8. Use `git log --decorate --oneline --graph --onelinecoda` to check the the cherry picked commit is now removed from the branch
9. We are now essentially back to where we began, now use `git cherry-pick <commit_hash_F>^..<commit_hash_G>` to cherry pick the range of commits from F to G (the two commits). Pay close attention and do not forget the caret `^` symbol after the first commit hash (see the section *Useful Note* below to understand why this is needed)
10. Use `git log --decorate --oneline --graph --oneline` to view the history
11. Use `cat` to view the contents of `names.txt` and `sentence.txt` look how they have changed!
12. How many commits were added due to the cherry pick?

## Useful Note

When using range of commmits with the cherry pick command, the first commit hash specified for the oldest (left side of the range) is not actually included in the cherry pick, as in that commit is excluded but all others between and including the newest commit are.

So to bypass this issue it is useful to use the caret `^` after the first commit hash to tell Git that you want the commit BEFORE this commit, therefore including it in the cherry pick process.

For example

    git cherry-pick ABCD..EFGH

would not include the commit ABCD, instead you should add a caret symbol to the end of the ABCD to tell git to include it, like this:

    git cherry-pick ABCD^..EFGH

Reference: https://www.tollmanz.com/git-cherry-pick-range/
Reference: https://git-scm.com/docs/git-cherry-pick

## Useful commands
- `git cherry-pick <ref>`
- `git reset --hard <ref>`
- `git log --decorate --oneline --graph --all`
