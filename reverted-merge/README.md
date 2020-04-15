# Git Kata: Reverted merge

In this kata, we explore the problems of reverting a merge commit.

## The story

Your team uses this amazing library-1.2.3 for its development, which is
maintained by another team.

At some point, your team integrates a new version library-1.2.4. Because you are
prudent, you do this on a branch `integrate-library-1.2.4`.

Unfortunately, you discover after your merge that the library has a bug, which
has to be fixed by this other team. To prevent the bug from being released into
production, you decide to revert the merge commit.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Revert the merge commit. To resolve the conflict, you need to determine what
features should be included in `mymodule.txt`.
   * You can tell whether feature X should be included or not by when it was
     commited.
   * You may assume that feature Y is also working with the old library version.
2. Take the role of the library team and fix the bug in the library on the
   integrate branch, e.g. change `lib.txt`.
3. Next we explore how you can get the changes from the branch into the master
   again. First try to merge to see what happens. The `lib.txt` file changes as
       expected, but '`mymodule.txt` does not. For an in depth discussion of
       the reason why consult this gist: [Reverting a faulty merge](https://github.com/git/git/blob/master/Documentation/howto/revert-a-faulty-merge.txt).
>  reverting a merge commit also
>  undoes the _data_ that the commit changed, but it does absolutely
>  nothing to the effects on _history_ that the merge had.
>
>  So the merge will still exist, and it will still be seen as joining
>  the two branches together, and future merges will see that merge as
>  the last shared state

4. Undo the merge with a reset --hard
5. Revert the revert and try the merge again. This time it works.

## Useful commands

* `git revert -m 1 <merge-sha1>`
* `git log --oneline --graph --all`
* `git add <file-name>`
* `git revert --continue`
* `git checkout <branch-name>`
* `git merge <branch-name>`
* `git reset --hard <sha1>`
* `git revert <sha1>`
