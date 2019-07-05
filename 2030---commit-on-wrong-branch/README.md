# gitkatas
## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

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
