# Rebase Exec

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Task

Doing local development we've created a bunch of commits. We would like to deliver them all to master. We would also like all commits to pass our tests.

Our test suite is contained in `test.sh`. We can use `git rebase --exec` to run the test suite for all commits. We have tagged the first commit in our history with `initial-commit`.

1. Run the test script using `./test.sh` to see the most recent commit succeed
1. Use `git rebase -i --exec ./test.sh initial-commit` to run the test script on all commits. You will be shown the plan, you do not need to change anything.
1. The tests will run, and fail on a single commit. The tests fail because the test script changes. So you need to fix it
1. Change the following strings in `test.sh`
    - `One test failed` to `all tests pass`
    - `exit 1` to `exit 0`
1. Stage `test.sh` and use `git commit --amend` to fix the broken commit
1. Run `git rebase --continue` to execute the test suite on the remaining commits
1. You may run `verify.sh` (or `verify.ps1` in PowerShell) to verify your solution
