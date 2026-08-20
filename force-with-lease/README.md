# Force pushing without deleting a colleague's work

You pushed a commit with a typo in the message. Amending it gives the commit a new ID, so
the remote refuses your next push. The new commit is not a fast-forward from the old one.

To get the amended commit onto the remote you have to force push. This exercise shows three
ways to do that. Two of them can delete a colleague's work without telling you.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

You get a `remote/` folder that takes the place of GitHub, and an `exercise/` clone with two
commits in it, both already pushed. The second one says `Add lgoin feature`.

To start over at any point, go back to the top folder and run the setup again:

```bash
$ cd ..
$ source setup.sh
```

## Part 1: Fix a typo in a commit you already pushed

1. Run `git log --oneline` and find the typo.
2. Fix it: `git commit --amend -m "Add login feature"`
3. Run `git push`. It is rejected with `non-fast-forward`.
4. Run `git push --force-with-lease`. It works.

That is the normal case. Nobody else had pushed, so there was no other work to lose.

## Part 2: A colleague pushes and your force push is blocked

1. Start over: `cd ..` then `source setup.sh`
2. Amend the message again: `git commit --amend -m "Add login feature"`
3. A colleague pushes an urgent fix: `./colleague-pushes-a-fix.sh`
   (or `.\colleague-pushes-a-fix.ps1` in PowerShell)
4. Run `git push --force-with-lease`

The push is rejected with `stale info`. Your `origin/master` still points at the commit you
last saw, but the branch on the remote has moved on. Git compared the two and refused.

## Part 3: Run git fetch, push again

Do what most people do when they see `stale info`. Update your copy of the remote and try again.

1. Run `git fetch`
2. Run `git push --force-with-lease` again, exactly the same command.
3. It succeeds.
4. Go back to the top folder and run `./verify.sh` (or `.\verify.ps1`).

Your colleague's fix is gone from the remote. It was deleted by the command that is usually
described as the safe one. Try to work out why before reading on.

> `--force-with-lease` never compared your push against the remote. It compared it against
> **your own copy** of the remote, the `origin/master` ref. `git fetch` updated that copy,
> so the check passed, even though you had not read a single line of what arrived.
> `git pull`, your editor's automatic fetch and most git GUIs update it too, on a timer.

## Part 4: Find the deleted commit again

The commit is still in the remote repository. Nothing points to it any more, but the remote
keeps a record of where its branch pointed before:

```bash
$ git -C remote reflog master
```

1. Find the entry from just before your force push.
2. That is how an overwritten branch is recovered, but only if somebody notices, and only
   before the server runs garbage collection and removes the commit for good.

## Part 5: Block the push with a second flag

1. Start over: `cd ..` then `source setup.sh`
2. Amend, run `./colleague-pushes-a-fix.sh`, then `git fetch`. The same steps as before.
3. This time: `git push --force-with-lease --force-if-includes`

The push is rejected with `remote ref updated since checkout`. Run `./verify.sh` to confirm
that your colleague's fix is still there.

`--force-if-includes` adds one more requirement. The commit at the tip of the remote branch
must appear in the reflog of the branch you are rewriting. In practice that means you have to
merge or rebase their work into yours. Fetching on its own is not enough.

To use it every time, make it the default and add a short alias:

```bash
$ git config --global push.useForceIfIncludes true
$ git config --global alias.repush "push --force-with-lease --force-if-includes"
```

> :bulb: Note: git's documentation says `--force-if-includes` is implied by a bare
> `--force-with-lease`. On git 2.52 that is not what happens. Part 3 uses exactly that form
> and still deletes your colleague's fix. Set the config explicitly.

## Commands you used

- `git push --force-with-lease`
- `git push --force-with-lease --force-if-includes`
- `git commit --amend`
- `git -C remote reflog master`
