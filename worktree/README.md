# Git Kata: Worktrees

Git worktrees allow you to check out multiple branches of the same repository simultaneously in different directories.
This is useful when you need to work on multiple features or branches at the same time without constantly switching branches
or stashing changes.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You're working on a feature branch and need to make some changes. Instead of switching branches (which might require stashing changes), you'll use a worktree to work on the feature branch while keeping your main worktree on `master` clean.

1. Explore the repository
   1. What branch are you currently on?
   2. What branches exist in this repository?
   3. Use `git log --oneline --graph --all` to see the commit history
   >*Notice that you have a `master` branch and a `feature` branch with different commits*

2. Create a worktree for the feature branch
   1. Use `git worktree add ../exercise-feature feature` to create a new worktree for the `feature` branch
   2. Check where the new worktree was created (it should be at `../exercise-feature`, a sibling to the `exercise` directory)
   3. Use `git worktree list` to see all worktrees
   4. Navigate to the new worktree directory (`cd ../exercise-feature`) and verify you're on the `feature` branch

3. Make changes in the worktree
   1. While in the `exercise-feature` directory, create a new file called `new-feature.txt` with some content
   2. Add and commit this file to the `feature` branch
   3. Make another change - modify `feature.txt` and commit that change as well
   4. Use `git log --oneline` to see your new commits on the `feature` branch

4. Merge the feature branch into master
   1. Navigate back to the main `exercise` directory (`cd ../exercise`)
   2. Verify you're on the `master` branch
   3. Merge the `feature` branch into `master` using `git merge feature`
   4. Use `git log --oneline --graph` to see how the branches have been merged
   5. Notice that you can see the commits you made in the worktree are now part of `master`

5. Remove the worktree
   1. Make sure you're in the `exercise` directory (the main worktree)
   2. Use `git worktree remove ../exercise-feature` to remove the worktree
   3. Verify it's been removed with `git worktree list`
   4. Notice that the directory has been cleaned up automatically
   5. The `feature` branch still exists - you can verify this with `git branch`

## Useful commands

- `git worktree add <path> <branch>` - Create a new worktree (typically as a sibling directory, e.g., `../exercise-feature`)
- `git worktree list` - List all worktrees
- `git worktree remove <path>` - Remove a worktree
- `git worktree prune` - Clean up stale worktree references
- `git merge <branch>` - Merge a branch into the current branch
- `git branch` - List branches
- `git log --oneline --graph --all` - View commit history
- `git status` - Check repository status

> **Note:** Worktrees are created as sibling directories to the main repository (e.g., `exercise-feature` next to `exercise`). The parent git repository's `.gitignore` includes patterns to ignore these worktree directories, keeping the exercise self-contained.
