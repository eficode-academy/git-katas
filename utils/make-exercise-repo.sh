#!/bin/bash
makerepo() {

    # First cleanup if there is an old exercise repository
    rm -rf exercise/

    # Initialize a new repository
    git init exercise

    # Go there
    cd exercise

# Set local git user name and email to distinguish commits.
    git config --local user.name "git-katas trainer bot"
    git config --local user.email "git-katas@example.com"
}
