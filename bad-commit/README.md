# gitkatas

##  Bad Commit

One of the commits on `master` introduced a bad file.
Find the commit and revert it using bisect.

## Getting started

1. Run `. setup.sh`
1. `cd exercise`

## Useful commands

- `git bisect start`
- `git bisect bad`
- `git bisect good <commit-ish>`
- `git bisect good`
- `git bisect reset`
- `git bisect run <cmd>`
- `test ! -f badfile` to test the existence of a file
- `test ! -f badfile;echo $?` to output the result of the test to the console
