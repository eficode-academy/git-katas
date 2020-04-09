# Detached head state

When a user ends up in a "detached head" state, this is a scary situation, but as we know, Git is not scary.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Run `git status` and `git log --oneline --graph --all` to see what is going on.
2. Restore normalcy in this repository by moving to `master`

Note that this task might seem more confusing if you did not run `setup.sh` in your terminal.

We want to have a branch called `the-beginning` that is made from the first commit with message `A`. 

3. Can you do this by first causing a detached head?

## Useful commands

- `git status`
- `git log --oneline --graph --all`
- `git checkout <ref>`

