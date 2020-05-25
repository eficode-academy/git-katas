# Git Kata: Configuring git

This kata has no `setup.sh` script. Just read and follow along.

## 1. Git Initial Configuration

Git wants to know who it should write as the committer of changes etc.
In order to do that, configure user name and user email towards git with the following commands:

1. `git config --global user.name "John Doe"`
2. `git config --global user.email "johndoe@example.com`

### Editor setup

Sometime git needs you to edit a file it creates e.g. the message of a commit you create.
As a standard, it is configured with VIM, but that has a steep learning curve, so you might be better of with another tool of yor liking:

If you want to use the cli based editor nano:
- `git config --global core.editor nano`

For the windows peeps:
- `git config --global core.editor notepad`

or alternatively other tools you already are familiar with:

- `git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`
- `git config --global core.editor "atom --wait"`
- `git config --global core.editor "code --wait"`

### Aliases

You can set up aliases as such:
* `git config --global alias.lol 'log --oneline --graph --all'`

This might be useful to you when you look at the git graph.
Paste that into your terminal, and try it out with `git lol`.

## 2. Downloading and Installing on Windows

* Download at [https://git-scm.com/download/win](https://git-scm.com/download/win) (or use [Chocolatey](https://chocolatey.org/))
* Install using the pre-selected defaults
* Create a key for authenticating against ssh-enabled repositories:
https://help.github.com/articles/generating-an-ssh-key
* or...
* open the Git Bash client you just installed and type:

    `ssh-keygen -t rsa -b 4096 -C "your_email@somewhere.com"`

This generates public/private keys in `%USERPROFILE%/.ssh` (named `id_rsa.pub`/`id_rsa`, respectively)

The public key can then be uploaded to your repo server:
For GitHub this is a section in user settings.
For BitBucket server this is SSH Keys under Manage Account

    git clone ssh://git@github.com/praqma-training/gitkatas.git
