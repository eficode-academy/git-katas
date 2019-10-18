# Git Katas: Submodules

Submodules are a way to embed other git repositories into your own, retaining a pointer to its `origin`.
This allows you to grab source change directly, as well as _pushing_ them back.

## Setup

1. Run `. setup.sh` (or `.\setup.ps1` in PowerShell)

> NOTE: If running setup.sh on windows, you can run into problems by sourcing the setup script. Instead, run `./setup.sh`, and the folders would be created correctly.

## The task

After running `. setup.sh` or `. ./setup.sh`, you'll be left with two repositories inside the `exercises` folder.

* A `product` repository
* A `component` repository.

Go to the `product` repository.

1. Add component as a submodule of product by running `git submodule add ../component/ include`.
2. What does your working directory look like?
3. Does `git status` look like you expect?
4. What if you cd to `include`?
5. Commit the changes on the `product` repository.

Go to the `component` repository.

6. Does it know that it is a submodule?
7. Make a change.
8. Commit it on the `component` repository.
9. Execute `git checkout master~0` to detach the HEAD.  This workaround is required in order to push to this repository from the `component` submodule that was checkout in `product` repository.

Go to the `product` repository.

10. Does `git status` or `git submodule foreach 'git status'` tell you anything about this new commit?
11. Go to the `include` path and `git pull` the latest version.
12. Go to the `product` path. What is the status now in your product repository?
13. Go to your `include` folder. Make a change and `push` it back to its origin.

Go to the `exercise` directory. We will make a clone of product to illustrate how submodules in a clone must be initialized.

14. Run `git clone product product_alpha`.
15. What happened?
16. Go to `product_alpha` directory, how does your working directory look, what does the log say, what is in the `include` directory?
17. Use `git submodule init`, what does your include dir look like?
18. Use `git submodule update`, what does your include dir look like now?

Go to the `product` repository.

19. Commit the changes on the `product` repository.

Go to the `exercise` directory. We will make a second clone to illustrate TBD.

20. Run `git clone product product_beta`.
21. What happened?
22. Go to `product_beta` directory, how does your working directory look, what does the log say?

Draw this entire exercise!
