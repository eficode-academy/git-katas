#!/bin/bash
make-exercise-repo() {

    # First cleanup if there is an old exercise repository
    rm -rf exercise/

    # Initialize a new repository
    git init exercise

    # Go there
    cd exercise
}
