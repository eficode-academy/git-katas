# Shell survival guide

## Paths
All paths start from `/`

Windows C: drive is thus `/c/`

Your user home folder is `/c/users/myname`

`~` works as a shortcut for user home folder, so:

`~/projects` equals `/c/users/myname/projects`

`.` is the current directory.

`..` is the parent directory.

## Print working directory
`pwd`

Output:
`/c/users/myname`

## List content of folder
`ls` (list files)

`ls -l` (list files in long form)

`ls -a` (list all including hidden files)

## Change directory
`cd <foldername>`

`cd ..` (go up one folder)

`cd project` (go into project folder)

## Working with files

`cat file.txt` prints content of the file.txt to screen

`less file.txt` print content of file.txt page-wise. Exit with `q`.

`echo "Hello world" > file.txt`
Writes the string "Hello World" to a file.txt, overwriting current content or creating the file if needed.

`echo "More stuff" >> file.txt` appends "More stuff" to the end of the file on a new line.

`touch file.txt`
Create an empty file. If `file.txt` exists, only update its timestamp.
