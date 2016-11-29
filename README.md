# Git Katas
In this repository you find a bunch of git exercises.
The concept is stolen without shame from [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/).
They have unfortunately not maintained the system - and we need more good git exercises.

Each kata resides in its own directory. Each directory contains a
`README.md` file that describes the task and a `setup.sh` file that
will setup a git repository for you to do the exercise in.
Note that not all terminals will be able to run the `setup.sh` script for you.
If you are on Windows you might need to use Git bash that is a part of the ordinary git installation.

To do an exercise go to the directory, run the `setup.sh` script and checkout what is in the `README.md`

If you are confused about git - the best place to start is `basic-commits`.

## Useful commands
- `cd <folder>` to go into a folder
- `ls` to list directory content
- `./setup.sh` to run the script that sets up the kata    



## Aliases
You can set up aliases as such:
`git config --global alias.lol log --oneline --decorate --graph --all`

This might be useful to you.
