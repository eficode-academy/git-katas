# Git katas: Git reset
We can manipulate the History very much so. We should only ever tinker with our local history. As publicly release commits must expect to be immutable.

We use reset to unstage change, but we can also do many more different things.

## Task
- run the command `. setup.sh`
- How does your working directory look like?
- What does your log look like?
- Try to run `git reset --soft HEAD~1`
- What happens to your working directory, your log and your stage?
- Run `git reset --mixed HEAD~1`
- What happens to your working directory, your log and your stage?
- Run `git reset --hard HEAD~1`
- What happens to your working directory, your log and your stage?
- Now try to use `git revert HEAD~1` 
- What happens to your working directory, your log and your stage?



