# Git Kata: Introduction to LFS

In this exercise we will be working with Git LFS.

Git LFS is not a core feature of Git but is a commonly used extension, and more or less adapted as the standard way of handling large (binary) files in Git.

In order to run this exercise, we need to have `git lfs` installed.

## Getting ready

### Install LFS

Mac:
```shell
brew install git-lfs
# or
port install git-lfs
```

Linux (distroes with apt):
```shell
sudo apt install git-lfs
```

Windows:
> Go to <https://git-lfs.github.com/>, download git-lfs installer and then install it.

Windows (chocolatey):
```shell
choco install git-lfs.install
```

or visit: <https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage>

### Activate LFS

Before you begin using LFS on your machine, you need to activate it once.

```shell
git lfs install
```

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

When you have run the script, you should have two folders:

```txt
.
├── exercise
└── remote
```

and you should currently be in the `exercise` folder. `exercise` is a clone of `remote` and you will be pushing changes back to this remote in the exercise.


## The task

### Phase 1

1. Investigate the current state of the repository.
2. Notice that there is a 'large' file called file2.mpeg. We want to commit this file to our history, but want to use LFS to handle this type of files for the efficiancy it provides. We will have to tell this Git repository that it should handle *.mpeg files via LFS. You can use `git lfs track ...` command for this.
3. As this repo didn't yet have a `.gitattributes` file, the `track` sub-command created one for us. Have a look at its content. This is a file we want to share, so add and commit it to the repo with a suitable commit message.
4. Now we are ready to actually add the big mpeg file to our repository but have it stored within the LFS "system". Due to the magic of LFS, this is 100% transarent. So just add the file like you would any other. Use `git lfs status` before and after to get a feel for what is happening. Now make a commit with the new file. Notice how this behaves exactly as with any other file. Even a `git push` behaves exactly as expected.
5. The only thing that has changed, is the way Git stores the actual file. Instead of storing the raw content directly, it has stored a reference to an object in the LFS-cache. If we want to inspect this, we can use the plumbing command `git cat-file` with a little trick: `git cat-file -p HEAD:file3.mpeg` (show the blob object of `file3.mpeg` as found at the commit referenced by `HEAD`.)
Instead of printing the actual content of the file, it should now print something like:

    ```apacheconf
    version https://git-lfs.github.com/spec/v1
    oid sha256:30e14955ebf1352266dc2ff8067e68104607e750abb9d3b36582b8af909fcb58
    size 1048576
    ```

  This shows us that the content of the file is stored under an object id `30e14...` in the LFS cache, and that this content has a size of about 1Mb. (1048576 bytes). The size of this local "reference" to the mpeg file is only 132 bytes!
6. Let's try to modify one of these files.
Luckily they are not actually really mpeg files so we can just "cheat" and use our good old trick:

    ```shell
    echo "more" >> file2.mpeg"
    ```

  to add more content.
7. Use `git lfs status` and see how it reflects the change in the file. How does this differ from what a normal `git status` displays? Add the file and run the command again. Commit and check again.
8. Now push the waiting changes to the remote.

### Phase 2

Let us now pretend to be a second developer.

1. Leave the exercise folder and go back up to the `lfs` exercise folder with `cd ..`.
2. Now let us make a new clone of the (local) remote. We can force Git to behave more like a regular clone by using `git clone --no-local remote newclone`.
3. cd into the `newclone` folder and investigate a bit. Notice how everything has just worked out by magic, and all checkout files have the expected size and content?
4. Feel free to make more changes in any of the two remotes and push/pull these as time allows.

### Bonus round

1. Let's have a look at what happened on the remote (i.e. the `remote` folder). Note that this is a "bare" repo, so it will look quite different than a normal Git repo folder (e.g. there is no workspace with files, so we only have the "internals" that are normally stored in `.git`.) Go to the `git-katas/lfs/remote` folder.
2. Notice that this folder, apart from usual `git/` content also now has a `lfs` subfolder. Under this folder we find the actual file contents of the large files that were "translated" and pushed by the LFS extension.

## Useful commands

- Initialize Git LFS:

    ```lfs
    git lfs install
    ```

- Track files that match a glob:

    ```shell
    git lfs track <file-pattern>
    git lfs track '*.bin'
    ```

- List already tracked patterns:

    ```shell
    git lfs track
    ```

- List tracked files that have been committed:

    ```shell
    git lfs ls-files
    ```

- Show status regarding LFS files

    ```shell
    git lfs status
    ```

## Additional information
