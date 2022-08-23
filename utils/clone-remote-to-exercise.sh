#!/bin/bash
clone-remote-to-exercise() {
    rm -rf exercise/

    # Clone remote
    git clone ./remote exercise

    # Go there
    cd exercise
}
