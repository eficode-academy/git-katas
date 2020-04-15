# Git Kata: Basic stashing

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You are working on your project. You've staged some work and have some unstaged work as well.
Suddenly, you're made aware that a bug has made it to production. You'll stash your work, fix the bug and get back to your original work.

1. Explore the repo
   1. What work do you have in the working directory?
   2. What work do you have staged ?
   3. What does the commit log look like ?
   >*Notice that file.txt has some staged changes (i.e. changes in the index) and unstaged changes (changes in the working directory)*
2. Use `git stash` to stash your current work.
   1. Now, what work do you have in the working directory?
   2. What work do you have staged ?
   3. What does the commit log look like ?
   4. What does the stash list look like ?
3. Fix the typos in bug.txt on master and commit your changes.
4. Now to get back to your work, apply the stash to master.
   1. What work do you have in the working directory?
   2. What work do you have staged ?
   >*Oops. All our changes are unstaged now. This may be undesirable and unexpected*
5. Undo our changes with `git reset --hard HEAD`. This is an unsafe command as it will remove files from your index and working directory permanently, but we have our changes safely stashed so we're ok. Review the [reset](reset/README.md) kata if you're unsure of what happens here.
6. Apply the stash to master with the `--index` option.
   1. What work do you have in the working directory?
   2. What work do you have staged ?
   >*Ok, back to where we were!*
7. We won't need the stash anymore. Drop it.
   1. What does the stash list look like ?
   2. What does the commit log look like ?



## Useful commands

- `git status`
- `git status -s`
- `git diff`
- `git diff master`
- `git stash`
- `git stash list`
- `git stash apply`
- `git stash apply --index`
- `git stash drop`
- `git log --oneline --all --graph`
- `git commit`
- `git add`
