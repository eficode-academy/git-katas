# Git Kata: Git attributes file

We'll work a bit with the [`.gitattributes`](https://www.git-scm.com/docs/gitattributes)
file in this kata. In this file, you're able to specify how git handles files, e.g., if they
are binary or text files. For instance, it's possible to describe what type of
line ending that should be used, or if you have some binary files in your repository,
you can specify what program that should be used for showing the diff. The following exercises
are for GNU/Linux platforms and Mac.

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

1. Create a `.gitattributes` file with the following content:

    `*.txt      text=auto eol=lf working-tree-encoding=UTF-8`

2. Run `git add file1.txt .gitattributes` and you should see

    `warning: CRLF will be replaced by LF in file1.txt.`

3. Try to experiment changing `eol` to either `auto` or `crlf`. Can you explain
   why only one of them changes the line endings of the file, i.e., gives a
   similar warning as above.

4. Some files must have DOS (CRLF) line endings in order to work. One such example
   is bat-files, e.g., Jenkins requires the line endings in bat-files to be CRLF before
   being able to run them.

   `*.bat      text=auto eol=crlf`

   A similar problem is present with Linux scripts using a shebang in the first line to point
   to an interpreter. GNU/Linux systems will have a problem running them, e.g., `bash\r` is not
   recognized as an interpreter.

5. Git is mostly suitable for text files, but it can also handle binary files
   and you can set programs to show the diff. You need to have installed exif (or exiftool)
   for this to work. If you don't have a png image on your machine, you can use:
   https://www.freepngimg.com/download/mario/20698-7-mario-transparent-background.png

    `*.png diff=exif`

6. Replace the image, e.g., using this one which is a smaller version of the image
  https://www.freepngimg.com/download/temp/20698-7-mario-transparent-background_400x400.png

  Now, run git diff,and you can see which attributes that were changed.

7. The line endings can also be controlled through 
   [`git config`](https://www.git-scm.com/book/en/v2/Customizing-Git-Git-Configuration):

    git config --global core.autocrlf input
  
   This will make sure that the repository always contains LF line endings, as line
   endings are converted to LF on pushes. The configuration can also be set to `true` 
   and `false`. You can experiment a bit with this.

## Useful commands

- `file file1.txt` (on GNU/Linux and Mac)
- `git add`
- `git status`
- `iconv` is useful for converting between different character encodings.

## Additional information

The `.gitattributes` has another alternative, if you are just interested in
having the same line endings and character encodings across the files in your
repository. [editorconfig](https://editorconfig.org/) can handle indentation
size (useful for Python), whether to use tabs or spaces, adding a final newline
etc.
