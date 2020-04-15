# Git Kata: Basic cleaning

## Setup:

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task
You are working on a project that involves generated files.  Say you are compiling C files into object files. Before checking out a new branch you want to start clean

1. Explore the directory with `ls -R`. There is a lot going on.  Code files, temp files, object files,..  Let's clean up!
2. Just to be safe, do a dry run and execute the clean command with the ` -n` option
3. Oh noes!  there's a `.c` file that would have been deleted!
4. Add `src/mylib.c` to the staging area. don't commit it.
5. Run the clean command with the ` -n` option. Notice that mylib.c will not be deleted. Also notice that the files in the obj directory are not listed
6. Run the clean command with the ` -n -d ` option.
7. Looks good! clean the repo ` -f -d `

## Useful commands
- `git clean -n`
- `git add`
- `git clean -n -d`
- `git clean -f -d`
