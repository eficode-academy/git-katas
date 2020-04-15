# gitkatas

## Bad Commit

One of the commits on `master` introduced a bad file.
Find the commit and revert it using bisect.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

Use `git bisect` to find the "bad" commit and then use `git revert` to revert it. When running `git bisect`, you indicate if the "state" is "good" or "bad" until it finds the commit that introduced the change.

For this exercise, the version is bad if `badfile` exists.

1. Start `git bisect`.
2. Usually the HEAD is "bad", as it is in this exercise. Use `git bisect bad` to indicate it.
3. Usually some old version will be good. In this exercise, the start version is. Use `git bisect good <commit-ish>` to indicate it.
4. `git bisect` will then checkout various commits to find the bad commit. Continue indicating the state until it tells you the first bad commit. Keep track of this commit.
5. Run `git bisect reset` so we can work on the repository.
6. Use `git diff` to make sure that the bad commit only introduced `badfile`.
7. Use `git revert` to it.

If you have a script that can tell if the current source code is good or bad, you can bisect by issuing `git bisect run`.

## Useful commands

- `git bisect start`
- `git bisect bad`
- `git bisect good <commit-ish>`
- `git bisect good`
- `git bisect reset`
- `git diff <commit-ish-1> <commit-ish-2>`
- `git revert <commit-ish>`
- `git bisect run <cmd>`
- `test ! -f badfile` (or `gci . badfile` in PowerShell) to test the existence of a file
- `test ! -f badfile;echo $?` to output the result of the test to the console
