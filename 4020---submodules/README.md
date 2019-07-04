# Git Katas: Submodules

Submodules are a way to embed other git repositories into your own, retaining a pointer to its `origin`.
This allows you to grab source change directly, as well as _pushing_ them back.

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

> NOTE: If running setup.sh on windows, you can run into problems by sourcing the setup script. Instead, run `./setup.sh`, and the folders would be created correctly.

## Task

After running `. setup.sh` or `. ./setup.sh`, you'll be left with two repositories inside the `exercises` folder.

* A `product` repository
* A `component` repository.

Go to the `product` repository.

1. Run `git submodule add ../component/ include`.
1. What does your working directory look like?
1. Does `git status` look like you expect?
1. What if you cd to `include`?
1. Commit the changes on the `product` repository.

Go to the `component` repository.

1. Does it know that it is a submodule?
1. Make a change.
1. Commit it on the `component` repository.
1. Execute `git checkout master~0` to detach the HEAD.  This workaround is required in order to push to this repository from the `component` submodule that was checkout in `product` repository.

Go to the `product` repository.

1. Does `git status` or `git submodule status` tell you anything about this new commit?
1. Go to the `include` path and `git pull` the latest version.
1. Go to the `product` path. What is the status now in your product repository?
1. Go to your `include` folder. Make a change and `push` it back to its origin.

Go to the `exercise` directory. We will make a clone.

1. Run `git clone product product_alpha`.
1. What happened?
1. Go to `product_alpha` directory, how does your working directory look, what does the log say?
1. Use `git submodule init`, what does your work dir look like?
1. Use `git submodule update`, what does your work dir look like now?

Go to the `product` repository.

1. Commit the changes on the `product` repository.

Go to the `exercise` directory. We will make a second clone.

1. Run `git clone product product_beta`.
1. What happened?
1. Go to `product_beta` directory, how does your working directory look, what does the log say?

Draw this entire exercise!
