# gitkatas
##  Bad Commit
One of the commits on `master` introduced a bad file.
Find the commit and revert it using bisect.


## Useful commands

- `git bisect start`
- `git bisect bad`
- `git bisect good <commit-ish>`
- `git bisect good`
- `git bisect reset`
- `git bisect run <cmd>`
- `test ! -f badfile` #test the existence of a file
