# Git Katas: Subtree

Subtree is a way to embed other git repository histories into your own by merging in the subtree history into yours. It also enables you to push patches to the subtree repository. This allows you to grab source change directly via merging histories, as well as _pushing_ them back.

This feature is useful if you decide that for instance a specific folder should be a repository on its own because other repositories/projects would need it.

## Setup

1. Run `./setup.sh`

> NOTE: If running setup.sh on windows, you can run into problems by sourcing the setup script. Instead, run `./setup.sh`, and the folders would be created correctly.

## Tasks

###  Add subtree

After running `. setup.sh` or `. ./setup.sh`, you'll have two repositories that we will use for this exercise.

INFO: You now have the following under the `excercise` directory:
* A `product` repository that contains the "product" history.
* A `component` repository that contains the "component" history.

Exercise
* Go to the `component` repository and run `git log` and notice the history.
* Go to the `product` repository and run `git log` and notice the history.
* Add the `component` repo as a remote reference: `git remote add component ../component/.git` ( optional, but good practice )
* Check the remotes using `git remote -v` and it should look like this:

```
$ git remote -v
component       ../component/.git (fetch)
component       ../component/.git (push)
```
* Add the `component` history to the this repository (`product`) under the directory `component`: `git subtree add --prefix component component master` . You should see something like this:
```
git fetch component master
warning: no common commits
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 224 bytes | 18.00 KiB/s, done.
From ../component/
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> component/master
Added dir 'component'
```
* Please explain what happend and what the result is. Consider running this command in both `product` and `component` repositories. `git log --graph --decorate --oneline --all
` and explain the common history and the newest commit in `product`.

### Pull in new commits from subtree
We have added the `component` subtree to the `component` directory also named a `prefix`in subtree terms. We now want add changes to the `component` and integrate them into the `product`

* Go to the `component` repository
* Make changes and commit them
* Go to the `product` repository and pull in the changes with this command: `git subtree pull --prefix component component master`
```
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 276 bytes | 5.00 KiB/s, done.
From ../component/
 * branch            master     -> FETCH_HEAD
   99d28dd..a930ba9  master     -> component/master
Merge made by the 'recursive' strategy.
 component/component.h | 1 +
 1 file changed, 1 insertion(+)
```
* Please explain what happend and what the result is. Consider running this command in both `product` and `component` repositories.
  `git log --graph --decorate --oneline --all` and explain the common history and the newest commits in `product`.

### Modify component directory and push commits to component repository
We have updated `component` directory from the `component` repository. We now want to modify the `component` directory and deliver the changes to the `component` repository. NOTE: We push to a new branch.

* Go to the `product` repository.
* Go to the `component` directory and make changes and commit them.
* We want to deliver the changes just made to the `component` repository using this command: `git subtree push --prefix component component patch`.
```
git push using:  component patch
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 357 bytes | 357.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To ../component/.git
 * [new branch]      e6fb29fe9a6213a9806e86195c609ba0bfd94249 -> patch
```

* Please explain what happend and what the result is. Consider running this command in both `product` and `component` repositories.
  `git log --graph --decorate --oneline --all` and explain the common history and the newest commits in `product`.
* Why do we push to a new branch?
* How would you do it if you not owner nor collaborator on the `component` repository on for example GitHub?

## Useful commands

* `git log --graph --decorate --oneline --all`
* `git subtree add --prefix component component master`
* `git remote add component ../component/.git`
* `git subtree push --prefix <prefix/directory> <repo> <branch>`

## Run all the exercises as a script

Run all the above commands to see the commands and their results.
```
replay=true debug=true ./setup.sh
```

## Resources

We found some resources that may assist you in understanding this feature of Git better.

* https://github.com/git/git/blob/master/contrib/subtree/git-subtree.txt
* https://blog.developer.atlassian.com/the-power-of-git-subtree/
