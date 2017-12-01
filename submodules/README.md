# Git Katas: Submodules
Submodules are a way to embed other git repositories into your own, retaining a pointer to its `origin`.
This allows you to grab source change directly, as well as _pushing_ them back.

In the folder you'll be left in after running `. setup.sh` exists three repositories.
A _product_ repository and two component repositories.
You will only need the _product_ repo and one _component_, but feel free to use the other component to experiment.

# Task
1. Go into the _product_ repo and run `git submodule add ../ComponentA/ include`
1. What does your working directory look like?
1. Does `git status` look like you expect? What if you cd to `include`?
1. Commit the changes to your product repo.
1. Go to the `ComponentA` repository in the exercise folder. Does it know that it is a submodule?
1. Make a change and commit it to your component.
1. Execute `git checkout master~0` to detach the HEAD.  We need to do this to be able to push to the repo.
1. Go back to your product repo.
1. Does `git status` or `git submodule status` tell you anything about this new commit?
1. Go to the `include` path and pull the newest version.
1. What is the status now in your product repo?
1. Go to your include folder, make a change and push it back to its origin
1. Go to the `./exercise/ComponentA/` folder, how does it look?
1. Go to the `exercise` dir
1. Run `git clone productA productB`
1. What happened?
1. Go to `productB`, how does your working directory look, what does the log say?
1. Use `git submodule init`, what does your work dir look like?
1. Use `git submodule update`, what does your work dir look like now?
1. Draw this entire exercise!
