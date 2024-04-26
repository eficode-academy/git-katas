# Git Kata: Git Diff Advance

## Setup

Run `source setup.sh` or `bash setup.sh` or `./setup.sh` (or `.\setup.ps1` in PowerShell)

## Tasks

### Objectives: We will explore how git diff looks from different directions, `word-diff`, `name-only`, and a practical use case other than just to see diff.

1. Current branch is `pipeline-improvement`. Use `git diff` to see how it is different from master.
2. Compare `git diff master` and `git diff master pipeline-improvement`.
3. Compare `git diff master pipeline-improvement` and `git diff pipeline-improvement master`. Notice what is being removed and added.
4. Include `--word-diff` with `git diff`. In addition to the default, word diff can also be used in different modes, i.e. `--word-diff=color`. See how it is different from normal diff.
5. Include `--name-only` option with `git diff` and see the result.
6. With `--name-only`, we get a list of changed files. This can be useful for example when we want to do selective compile/test of changed files instead of a full re-build, given that steps can be compiled/tested independently. In our exercise, there are 3 steps in a pipeline and a utilities file. Let's say we only want to test the pipelines because we're confident enough with the utils to not test them (naughty-list programmer). We can do something like this:

    `git diff --name-only | grep .pipeline | xargs cat`

    This will:
    1. Get a list of the changed files
    2. Filter for only `.pipeline` files
    3. `cat`/test only these files

## Relevant commands and options
- `git diff`
- `--word-diff`
- `--name-only`
- `grep`
- `xargs`