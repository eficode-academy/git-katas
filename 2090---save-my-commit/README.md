# gitkatas
## Kata6: Save my commit
We've lost the holy grail!
Save it!

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

# Task
1. Save the most important commit that was lost
1. What's the difference between saving using reset and using cherry-pick?
1. Remove the `exercise` folder.
1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)
1. Run `git gc`
1. Can you still save the lost commit?
1. For extra credit what if someone reset their branch, force pushed and you pulled? Can you restore the old state?

## Relevant git commands
- `git reflog`
- `git cherry-pick`
- `git reset --hard`
