# gitkatas
## Kata6: Save my commit
We've lost the holy grail!
Save it!

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

# Task
1. Save the most important commit that was lost
2. What's the difference between saving using reset and using cherry-pick?
3. Remove the `exercise` folder.
4. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)
5. Run `git gc`
6. Can you still save the lost commit?
7. For extra credit what if someone reset their branch, force pushed and you pulled? Can you restore the old state?

## Relevant git commands
- `git reflog`
- `git cherry-pick`
- `git reset --hard`
