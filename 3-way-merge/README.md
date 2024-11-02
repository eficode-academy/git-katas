# Git Kata: 3-Way Merge

## Setup

1. Run `source setup.sh` (or `.\setup.ps1` in PowerShell)

## The task

You again live in your own branch, this time we will be doing a bit of juggling with branches, to show how lightweight branches are in git. See before & after diagrams below the instructions.

1. Create a branch called greeting and switch to it
2. Edit the greeting.txt to contain your favorite greeting
3. Add greeting.txt files to the staging area
4. Commit
5. Switch back to the master branch
6. Create a file README.md with information about this repository
7. Add the README.md file to staging area and make the commit
8. What is the output of `git log --oneline --graph --all`?
9. Diff the branches
10. Merge the greeting branch into master
11. What is the output of `git log --oneline --graph --all` now? Observe the extra merge commit created with the message "Merge branch 'greeting'".

### Before Merge

```mermaid
graph TD
  classDef commit fill:#4e4,stroke:#333,stroke-width:2px;
  classDef branch fill:#ddd,stroke:#333,stroke-width:2px;
  A(Initial) --> B1(Commit on greeting)
  A --> C1(Commit on master)
  greeting[greeting] --> B1
  master[master] --> C1
  class greeting branch;
  class master branch;
  class A commit
  class B1 commit;
  class C1 commit;
````

### After merge

```mermaid
graph TD
  classDef commit fill:#9c9c9c,stroke:#333,stroke-width:2px;
  classDef branch fill:#666,stroke:#000,stroke-width:2px;
  A(Initial) --> B1(Commit on greeting)
  A --> C1(Commit on master)
  B1 --> D(Merge Commit)
  C1 --> D
  master[master] --> D
  greeting[greeting] --> B1
  class greeting branch;
  class master branch;
  class A commit;
  class B1 commit;
  class C1 commit;
  class D commit;
```

## Useful commands

- `git branch`
- `git branch <branch-name>`
- `git branch -d <branch-name>`
- `git switch <branch-name>`
- `git switch -c <branch-name>`
- `git branch -v`
- `git add`
- `git commit`
- `git commit -m`
- `git merge <branchA> <branchB>`
- `git diff <branchA> <branchB>`
- `git log --oneline --graph --all`
