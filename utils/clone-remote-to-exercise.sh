#!/bin/bash
clone_remote_to_exercise() {
    rm -rf exercise/

    # Clone remote
    git clone ./remote exercise

    # Go there
    cd exercise
}
