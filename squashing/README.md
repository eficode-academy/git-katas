# Squash commits

In this kata I would like to clean up my history a bit.

The five newest commits all tinker with file.txt which obviously contains my feature.

I would like these commits to be squashed into a single commit!

While you are at it I would really like the ugly `\n` characters inside `file.txt` to be removed from the history.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. _Squash_ the five relevant commits into one and make a good commit message (see Further information).
2. How does `git log` look now?
3. Clean up the `\n` characters inside `file.txt` without adding to the commit history.

## Useful commands

- `git rebase -i <ref>`
- `git add`
- `git commit --amend`

## Further information

### The seven rules of a great Git commit message

From [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how

Example
```
Summarize changes in around 50 characters or less

More detailed explanatory text, if necessary. Wrap it to about 72
characters or so. In some contexts, the first line is treated as the
subject of the commit and the rest of the text as the body. The
blank line separating the summary from the body is critical (unless
you omit the body entirely); various tools like `log`, `shortlog`
and `rebase` can get confused if you run the two together.

Explain the problem that this commit is solving. Focus on why you
are making this change as opposed to how (the code explains that).
Are there side effects or other unintuitive consequences of this
change? Here's the place to explain them.

Further paragraphs come after blank lines.

 - Bullet points are okay, too

 - Typically a hyphen or asterisk is used for the bullet, preceded
   by a single space, with blank lines in between, but conventions
   vary here

If you use an issue tracker, put references to them at the bottom,
like this:

Resolves: #123
See also: #456, #789
```
