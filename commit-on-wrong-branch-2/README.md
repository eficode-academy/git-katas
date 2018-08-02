# Git kata: Commit on wrong branch II

## The Story

You develop a new feature on the branch `new-feature`. You have already
implemented the first part of a feature, when you are notified of a critical
bug that has to be fixed right away on the `master` branch.

After the bug fix, you continue to work on the new feature. After you committed
the second part of the feature, you realize that you have done your commit on
the `master` branch instead of the feature branch.

## The task

1. Run `. setup.sh`
2. Move the faulty commit from the `master` branch to the `new-feature` branch.

## Useful Commands

* `git reset HEAD~1` to remove the last commit from the repository, i.e. move
  the HEAD pointer to the commit before the last
* `git stash` to temporarily save your changes so that you can switch branches
