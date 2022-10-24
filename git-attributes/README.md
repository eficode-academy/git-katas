# Git Kata: Git attributes file

We'll work a bit with the [`.gitattributes`](https://www.git-scm.com/docs/gitattributes)
file in this kata. In this file, you're able to specify how git handles files, e.g., if they
are binary or text files. For instance, it's possible to describe what type of
line ending that should be used, or if you have some binary files in your repository,
you can specify what program that should be used for showing the diff. The following exercises
are for GNU/Linux platforms and Mac.

## Setup

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

   Note: The line endings can also be controlled through
   [`git config`](https://www.git-scm.com/book/en/v2/Customizing-Git-Git-Configuration) but that is a whole different topic.

5. Git is mostly suitable for text files, but it can also handle binary files and you can set programs to show the diff.
   In this example, we are going to use the command line tool `exiftool` to show and compare meta-data for iamges. You will need to have this tool installed for the example to work. (There is also a similar tool called just `exif` which would also work, but only for `jpg` files). If you don't have exiftool already it is usually quite easy to install with your favorite package manager e.g. `brew install exiftool` or `apt install exiftool`

   Once we have exiftool installed, we will need to configure a new "diff driver" in the git config that uses exiftool to "convert" a binary file to a text representation that can be diff'ed.

   Add the following to your global ~/.gitconfig or to the local .git/config file.

   ```shell
   [diff "useexif"]
   textconv = exiftool
   cachetextconv = true
   ```

   Then we need to actually tell Git to use this new "driver" for any files of the type `PNG`. Add the following to the .gitattributes file you created at the start of the exercise:

   ```shell
   *.png diff=exif
   ```

## Advanced bonus task

6. Now that everything is set up, let us test it out.
   You can use the image mario.png located next to this README file. ( Mario png borrowed from <https://www.freepngimg.com/download/mario/20698-7-mario-transparent-background.png> )

   ![Mario large](mario.png)

   Copy/move this image to the exercise folder (e.g. with `cp ../mario.png .`), then use `git add` to stage the image and put it under Git's control.

   Now we can run `git diff --staged` to view the change, and hopefully Git will print out the full `exiftool` output in green as it is comparing to the previous (non-existing) /dev/null version.

7. To really see the value, replace the image with a different one, e.g., using the smaller version of the image also in this folder:

   ![Mario small](mario-small.png)

   If you copy this file to the exerise folder and rename it to `mario.png` Git will correctly see it as a changed file. (you can do this easily using `cp ../mario-small.png ./mario.png` to get the smaller one and overwrite the existing)

   Now, just run the regular `git diff` to have Git compare the new smaller one with the original that is currently staged. It should be easy to see which attributes of the image were changed in the resize.

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
