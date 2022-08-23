# Master based workflow

In this kata we will practice the workflow commonly known as "master based workflow". It is sometimes called Centralized workflow or simplified workflow. Collaboration works by pushing to and pulling from the master branch. This workflow is good for simple projects, or solo projects.

We will work with a fake remote repository, that serves as a standin for one hosted by a service like GitHub or Bitbucket.

## Setup

Run `source setup.sh` (or `.\setup.ps1` in PowerShell) to setup the exercise.

## Task

1. Get a local instance of the remote by running the command `git clone fake-remote-repository local-repo`
2. Change to the local repository with the command `cd local-repo`
3. Add a line of text to `README.md`
4. Commit the change 
5. Run `git status` and notice how your local master branch relates to the remote master branch
6. Push the change to the remote using the command `git push`
7. Run `git status` to see that you are up-to-date
8. Add another line of text to `README.md`
9. Commit the change
10. Run the command `../fitzgerald-pushes-before-we-do.sh` (or `..\fitzgerald-pushes-before-we-do.ps1` in PowerShell) to simulate a collaborator delivering changes to the fake remote
11. Push your change. Notice that they are rejected by the remote
12. Run the command `git fetch` to retrieve the changes from the fake remote
13. Run `git status` to see how your `master` branch and the remote `master` branch have diverged
14. Run `git merge origin/master` to apply the changes from the fake remote to your master branch
15. Run `git status` to see the how the local and remote master branches relate
16. Run `git log --all --oneline --decorate --graph` to see the merge commit on the master branch
17. Run `git push` to deliver your changes to the fake-remote
18. Run `git status` to see that your `master` branch is up-to-date and has no undelivered changes

## Relevant commands

- `git push`
- `git fetch`
- `git merge`
- `git log --oneline --decorate --graph --all`
- `git clone`