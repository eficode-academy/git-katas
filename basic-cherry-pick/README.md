# Git Kata: Basic Cherry Pick
## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

In this task we want have 2 branches (master & feature) and have worked and progressed on both branches seperately. However there are a few changes that have happened on the feature branch that we want to simply take and add onto the master branch.

Git has functionality for this "take-just-these-changes" and it is called cherry-pick.
You tell git which commits you would like to cherry pick and git will add those commits onto your branches commit history.

Git can cherry pick either a single commit from another branch OR it can also cherry pick a range of multiple commits from a branch.

We currently have this git history in our repository (/exercise):

    A - B - C - D         MASTER
          \
            E - F - G - H FEATURE 

As you can see the feature branch and the master branch have progressed with different commits to one another. We want to now simply cherry pick the commits F & G and add them onto the end of the master branch, so that our git history looks like this:

    A - B - C - D - F - G MASTER
          \
            E - F - G - H FEATURE 

1. Use `git log --decorate --oneline` to look at the history
2. Use `cat` to view the content of `names.txt` this file is changed in commit F
3. Use `cat` to view the content of `sentence.txt` this file is changed in commit G
4. Use `git cherry-pick <commit_hash_F>` to cherry pick just the F commit onto your branch
5. Use `git log --decorate --oneline` to see the change to the history and that commit F should now be the newest commit on the master branch
6. Use `cat` to view the content of `names.txt` look how it has now changed!
7. Use `git reset --hard HEAD^` to delete that cherry picking from the history so that we can now try again and cherry pick a range of commits
8. Use `git log --decorate --oneline` to check the the cherry picked commit is now removed from the branch
9. We are now essentially back to where we began, now use `git cherry-pick <commit_hash_F>^..<commit_hash_G>` to cherry pick the range of commits from F to G (the 2 commits). Pay close attention and do not forget the caret (^) symbol after the first commit hash (see the section *Useful Note* below to understand why this is needed)
10. Use `git log --decorate --oneline` to view the history
11. Use `cat` to view the contents of `names.txt` & `sentence.txt` look how they have changed!
12.How many commits were added due to the cherry pick?

## Useful Note
When using range of commmits with the cherry pick command, the first commit hash specified for the oldest (left side of the range) is not actually included in the cherry pick, as in that commit is excluded but all others between and including the newest commit are.

So to bypass this issue it is useful to use the caret symbol (^) after the first commit hash to tell git that you want the commit BEFORE this commit, therefore including it in the cherry pick process.

For example...

    git cherry-pick ABCD..EFGH

would not include the commit ABCD, instead you should add a caret symbol to the end of the ABCD to tell git to include it, like this:

    git cherry-pick ABCD^..EFGH

Reference: https://www.tollmanz.com/git-cherry-pick-range/
Reference: https://git-scm.com/docs/git-cherry-pick

## Useful commands
- `git cherry-pick <ref>`
- `git reset --hard <ref>`
- `git log --decorate --oneline`
