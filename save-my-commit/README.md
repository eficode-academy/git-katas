# Git Kata: Save my commit
We've lost the holy grail!
Save it!

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task
We just reset our commits. Try different ways to restore them.

1. Using cherry-pick, restore the most important commit that was lost.
2. Using reset, undo the reset (Google "How to undo git reset").
3. Remove the `exercise` folder.
4. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)
5. Run `git gc`
6. Can you still save the lost commit? Why? (Google "git reflog default expiration").
7. For extra credit what if someone reset their branch, force pushed and you pulled? Can you restore the old state?

## Relevant git commands
- `git reflog`
- `git cherry-pick`
- `git reset --hard`
