# Git Katas: Subtree

Subtree are a way to embed other git repository histories into your own by merging in the subtree history into yours. It also enables you to push patches to the subtree repo
This allows you to grab source change directly via merging histories, as well as _pushing_ them back.

## Setup

1. Run `./setup.sh`

> NOTE: If running setup.sh on windows, you can run into problems by sourcing the setup script. Instead, run `./setup.sh`, and the folders would be created correctly.

## Task

After running `. setup.sh` or `. ./setup.sh`, you'll be left with two repositories inside the `exercises` folder.

* A `product` repository
* A `component` repository.

Go to the `product` repository.

1. Run `git ......................`.
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

10. Does `git status` or `git submodule status` tell you anything about this new commit?
11. Go to the `include` path and `git pull` the latest version.
12. Go to the `product` path. What is the status now in your product repository?
13. Go to your `include` folder. Make a change and `push` it back to its origin.

Go to the `exercise` directory. We will make a clone.

14. Run `git clone product product_alpha`.
15. What happened?
16. Go to `product_alpha` directory, how does your working directory look, what does the log say?
17. Use `git submodule init`, what does your work dir look like?
18. Use `git submodule update`, what does your work dir look like now?

Go to the `product` repository.

19. Commit the changes on the `product` repository.

Go to the `exercise` directory. We will make a second clone.

20. Run `git clone product product_beta`.
21. What happened?
22. Go to `product_beta` directory, how does your working directory look, what does the log say?

Draw this entire exercise!
