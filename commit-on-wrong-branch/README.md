# gitkatas
## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Kata 5: Commit on wrong branch
This kata was shameless ripped off from [Git Katas](http://blog.schauderhaft.de/gitkata/)

You are working really hard on the master branch. 
Part of your work is already committed. This is when your boss comes in with an urgent request.

Since your current HEAD is not ready for prime time you backup one commit, and start a new branch named 'quickfix'. You do whatever your boss wants and commit the changes to that new branch.

That's when you realize you created a minor mess with your branches.

Currently your commits look like this
```
         master
           |
           v
   A <---- B
   ^ \
   |  \--- C
remote     ^
           |
        quickfix
```
But you want it to look like this:
```
         remote
           |
           v
   A <---- C <---- B
                   ^
                   |
                  HEAD
```

Git ahead!

Note: since the B in the current and in the target structure don't have the same parent they can't be literally the same commit.

## The task

1. Use `git log --oneline --graph --all` to view all the branches and their commits.
2. Copy C onto master before B by rebasing quickfix on master.
3. Make a new branch (changes-including-B) off of our master so we can keep working on B.
4. Reset the HEAD on master back to C.
5. Delete the quickfix branch.
6. Push master. You can't do this in the training exercise.
7. You can merge the changes-including-B branch to master and delete changes-including-B or just checkout changes-including-B and work there.

## Useful commands
- `git log --oneline --graph --all`
- `git checkout <branch-name>`
- `git rebase <branch-name>`
- `git branch <branch-name>`
- `git reset --soft HEAD~`
- `git branch -d <branch-name>`
- `git merge <branch-name>`
