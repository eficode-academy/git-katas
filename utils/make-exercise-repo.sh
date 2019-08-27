#!/bin/bash
makerepo() {

    # First cleanup if there is an old exercise repository
    rm -rf exercise/

    # Initialize a new repository
    git init exercise

    # Go there
    cd exercise

}

makefakeremoterepo() {

    # First cleanup if there is an old exercise repository
    rm -rf remote/

    # Initialize a new repository
    git init remote

    # Go there
    cd remote

}
