# Git Kata: Git objects
Objects are stored in `<repository>/.git/objects` in subfolders matching the first two chars of the sha.
`fc1da6e8f` is therefore the file: `.git/objects/fc/1da6e8f`.

`git cat-file` inflates and shows the content of what ever _ref_ you pass it.
`-p` asks `cat-file` to pretty-print the content of an object.

`git ls-tree master .` inflates and lists the content of a folder.

## Task
1. Use `git log` to find the sha of a commit
2. Locate the file in the `.git` folder
3. What is in the file?
4. Use `git cat-file -p <sha>` to inflate and view the content.
5. Use `git cat-file` to look at the tree referenced in your commit
6. Use `git cat-file` to look at the parent commit
7. Do these commands work in the `.git` folder? Do you have to be in there?
8. Compare `cat-file` looking at a _tree_ object to using `ls-tree` on a _commit_
9. How does it look on an older commit compared to what you have in `HEAD`?
