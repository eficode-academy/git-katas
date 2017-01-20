# gitkatas
## Kata2 squash commits
In this kata I did not worked as I should have, but I would like to clean up my history a bit.

The five newest commits all tinker with file.txt which obviously contains my feature.

I would like these commits to be squashed into a single commit!

While you are at it I would really like the ugly `\n` to be removed from the history.

## Task
1. _Squash_ the five relevant commits into one, cleaning up the commit msg of one of the commits
1. How does `git log` look now?

### Relevant commands
- `git rebase -i <ref>`
- `git rev-parse <ref>`
