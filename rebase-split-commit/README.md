# Rebase Split Commit

## Setup

- Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

We are expecting that you know the basic of `git rebase` if not then please visit [here](https://github.com/eficode-academy/git-katas/tree/master/rebase-branch) before moving with the task.

If you want split most recent commit then you can either use `rebase` or soft `reset` the most recent commit and split it manually.

In this task we are going to use interactive mode of `rebase`, for spliting the commit in between somewhere in commits below commands can be used:

- Start the `rebase` in interactive mode by either supplying the commit sha from which you want to split commit or use `--root` option to start the `rebase` from start of the first commit. Suppose we want to split from the last 3 commit then we can run command `git rebase -i HEAD~3`.
- After the interactive mode is started replace the word `pick` with `edit` or `e` for short to mark that this is the commit you want to edit, After you are done edit the editor.
- As soon you exit the editor `rebase` interactive mode with start and it drop you to the first `edit` mark commit, Now if you want to split the commit you can need to run `git reset --soft HEAD~1` command which will uncommit the current commit changes and move all the changes to staged state then you can just either unstage change and commit the file separately or make changes to the file and commit, After you are done just run `git rebase --continue` command.
- Follow the same procedure for all the `edit` marked commit until you reach to the end and their are no longer changes that need to be done you will return to the `HEAD` with the recent split changes included.
- You can confirm if the recent changes are include with either `git log` command or `git log --patch` to see the changes in detail.

**Note:** The above steps can also be used to add additional commit to `edit` mark commit without spliting the commit

## Useful commands

- `git log`
- `git log --patch` # log with diff
- `git rebase -i HEAD~3` # start rebase move at pos
- `git reset --soft HEAD~1` # reset the previous commit and move all the changes to stage state
- `git rebase --continue` # contine to next commit in rebase mode
- `git rebase --abort` # exit and abort rebase mode