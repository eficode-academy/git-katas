# Git Katas: Submodules

Submodules are a way to embed other git repositories into your own, retaining a pointer to its `origin`.
This allows you to grab source changes directly, as well as _pushing_ them back.

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

> NOTE: If running setup.sh on windows, you can run into problems by sourcing the setup script. Instead, run `./setup.sh`, and the folders would be created correctly.

## The task

After running the setup script, you'll be left with three repositories inside the `exercise` folder.

* A `component` repository cloned from `remote`.
* A `product` repository.
* A `remote` repository. This is the "remote" repository that would exist on your preferred Git repository host, e.g. github.com.

Go to the `product` repository.

1. Add component as a submodule of product by running `git submodule add ../remote include`.
2. What does your working directory look like?
3. Does `git status` look like you expect?
4. What if you cd to `include`?
5. Run `git diff --cached` in `product`. Where can you find the commit id shown in the `+Subproject commit ...` line?
6. Commit the changes on the `product` repository.

Go to the `component` repository.

7. Does it know that it is used as a submodule?
8. Make a change to the `component` repository and `git commit` and `git push` it.

Go to the `product` repository.

9. Does `git status` or `git submodule foreach 'git status'` tell you anything about this new commit?
10. Go to the `include` directory and `git pull` the latest version.
11. Verify that the change from the `component` repository is available in `include`.
12. Go to the `product` directory. What is the status now in your product repository? Also examine with `git diff`.
13. Go to your `include` folder. Make a change and `push` it back to its origin.

Go to the `exercise` directory. We will make a clone of product to illustrate how submodules in a clone must be initialized.

14. Run `git clone product product_alpha`.
15. Go to `product_alpha` directory, how does your working directory look, what does the log say and what is in the `include` directory?
16. Run `git submodule init`, what does your `include` dir look like?
17. Run `git submodule update`, what does your `include` dir look like now?
18. Is the latest change from `component` available in include?

Go to the `product` repository.

19. Commit the changes on the `product` repository.

Go to the `product_alpha` repository. We'll ensure that we have the latest changes from product.

20. Run `git submodule update`.
19. Is the latest change from `component` available in `include`?
20. Examine the output of `git submodule status`. Compare the commit id with the `component` repository.
21. Run `git submodule update --remote`.
19. Is the latest change from `component` available in include?
20. Examine the output of `git submodule status`. Compare the commit id with the `component` repository.

Draw this entire exercise!
