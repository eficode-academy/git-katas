# Git Katas: Submodules
Submodules are a way to embed other git repositories into your own, retaining a pointer to its `origin`.
This allows you to grab source change directly, as well as _pushing_ them back.

In the folder you'll be left in after running `. setup.sh` exists three repositories.
A _product_ repository and two component repositories.
You will only need the _product_ repo and one _component_, but feel free to use the other component to experiment.

# Task
- Go into the _product_ repo and run `git submodule add ../ComponentA/ include`
- What does your working directory look like?
- Does git status look like you expect? What if you cd to `include`?
- Commit the changes to your product repo.
- Go to the the component repository in the exercise folder. Does it know that it is a submodule?
- Make a change and commit it to your component.
- Go back to your product repo.
- Does `git status` or `git submodule status` tell you anything about this new commit?
- Go to the `include` path and pull the newest version.
- What is the status now in your product repo?
- Go to your include folder, make a change and push it back to its origin
- Go to the `./exercise/ComponentA/` folder, how does it look?
- Go to the `exercise` dir
- run `git clone productA productB`
- What happened?
- Go to productB, how does your working directory look, what does the log say?
- Use `git submodule init`, what does your work dir look like?
- use `git submodule update`, what does your work dir look like now?
- Draw this entire exercise!

