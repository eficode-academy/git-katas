# Git Kata: Configuring git


## 1. Git Initial Configuration
1. `git config --global user.name "John Doe"`
1. `git config --global user.email "johndoe@example.com`

For the vim scared:
- `git config --global core.editor nano`

For the windows peeps:
- `git config --global core.editor notepad`

or alternatively:

- `git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`


## Aliases

You can set up aliases as such:
* `git config --global alias.lol 'log --oneline --graph --all'`

This might be useful to you.

## 2. Downloading and Installing on Windows

* Download at [https://git-scm.com/download/win](https://git-scm.com/download/win)
* Install using the pre-selected defaults
* Create a key for authenticating against ssh-enabled repositories:
https://help.github.com/articles/generating-an-ssh-key
* or...
* open the Git Bash client you just installed and type:

`ssh-keygen -t rsa -b 4096 -C "your_email@somewhere.com"`

This generates public/private keys in %USERPROFILE%/.ssh (named id_rsa.pub)

The public key can then be uploaded to your repo server:
For GitHub this is a section in user settings.
For BitBucket server this is SSH Keys under Manage Account

Git clone ssh://git@github.com/praqma-training/gitkatas.git
