# Git Kata: Tagging of the commits
## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## Motivation

[Tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging) are convenient for
keeping track of commits that bump a version number. One way of using them is
together with branches, where we can tag commits in a branch if they bump the
version number, e.g., a branch called `version/1.1` can have the tags `1.1.1`,
`1.1.2` etc. Tags can also be used without branches.

There are two types of tags, annotated tags and unannotated tags. Annotated tags
can contain additional information, i.e., you could add some log output, in
addition to the name. Apart from annotated tags, you can create unannotated tags
that just have the name. In some cases, tags with no annotations work well,
because the tag name and the changes of the commit contain the necessary information.

## The task

For simplicity, we will just work with the master branch in this kata. A couple
of tags are already created.

1. See which tags that were created.
2. Make a new commit, and introduce a new annotated tag.
3. We made a couple of commits. Can you add a tag to an arbitrary commit?
4. The exercise repository contains an annotated tag. What's the message?
5. Maybe not all of the tags are needed. Delete some of them.

## Useful commands
- `git tag`
- `git tag -d <tag>`
- `git tag --list <pattern>`
- `git push --tags <branch>`
- `git rev-parse <tag>`
- `git show`
