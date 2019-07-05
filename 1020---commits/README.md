# Git Kata: Basic Commits
This kata will introduce you to the commands `git add` and `git commit`.

You can look at the bottom of this file, if you have not yet done basic git configuration.

## Setup:

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Use `git status` to see which branch you are on.
1. What does `git log` look like?
1. Create a file
1. What does the output from `git status` look like now?
1. `add` the file to the staging area
1. How does `git status` look now?
1. `commit` the file to the repository
1. How does `git status` look now?
1. Change the content of the file you created earlier
1. What does `git status` look like now?
1. `add` the file change
1. What does `git status` look like now?
1. Change the file again
1. Make a `commit`
1. What does the `status` look like now? The `log`?
1. Commit the newest change

## Useful commands
- `git add`
- `git commit`
- `git commit -m "My commit message"`
- `git log`
- `git log -n 5`
- `git log --oneline`
- `git log --oneline --graph`
- `touch filename` to create a file (or `sc filename ''` in PowerShell)
- `echo content > file` to overwrite file with content (or `sc filename 'content'` in PowerShell)
- `echo content >> file` to append file with content (or `ac filename 'content'` in PowerShell)


## Git Initial Configuration
1. `git config --global user.name "John Doe"`
1. `git config --global user.email "johndoe@example.com`

For the vim scared:
- `git config --global core.editor nano`

For the windows peeps:
- `git config --global core.editor notepad`

Other editor options:
- `git config --global core.editor "atom --wait"`
- `git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst"`
