#!/bin/bash

# These are helper functions to set up or configure few things, when or if required. 
# For e.g., to configure a trainer bot username and email in local exercise repo to distinguish commits, and so on. 

# Intended to be extended for other purposes.


set -e

config-local-username() {
    # In the exercise repo, set local git user name and email to distinguish commits between user and setup script.

    EXERCISE_REPO_NAME='exercise'

    REPO=$(git rev-parse --show-toplevel) # Grab the git repo name
    REPO_NAME=$(basename ${REPO})

    if [[ ! -z ${REPO_NAME} && ${REPO_NAME} == 'exercise' ]]; then
        git config --local user.name "git-katas trainer bot"
        git config --local user.email "git-katas@example.com"
        echo "Successfully configured local username and email"
    fi
}

clear-local-user() {
# In the exercise repo, unset local git user name and email to distinguish commits between user and setup script.

    EXERCISE_REPO_NAME='exercise'

    REPO=$(git rev-parse --show-toplevel) # Grab the git repo name
    REPO_NAME=$(basename ${REPO})

    if [[ ! -z ${REPO_NAME} && ${REPO_NAME} == 'exercise' ]]; then
        git config --local --unset user.name
        git config --local --unset user.email
        echo "Successfully unset local username and email"
    fi

}

config-local-gpgsigning() {
    # In the exercise repo, disable signing commits as it might be enabled globally.
    EXERCISE_REPO_NAME='exercise'

    REPO=$(git rev-parse --show-toplevel) # Grab the git repo name
    REPO_NAME=$(basename ${REPO})

    if [[ ! -z ${REPO_NAME} && ${REPO_NAME} == 'exercise' ]]; then
        git config --local commit.gpgsign "false"
        echo "Successfully disable local GPG signing"
    fi
}

clear-local-gpgsigning() {
# In the exercise repo, unset locally disabled signing of commits.

    EXERCISE_REPO_NAME='exercise'

    REPO=$(git rev-parse --show-toplevel) # Grab the git repo name
    REPO_NAME=$(basename ${REPO})

    if [[ ! -z ${REPO_NAME} && ${REPO_NAME} == 'exercise' ]]; then
        git config --local --unset commit.gpgsign
        echo "Successfully unset local GPG signing"
    fi
}

pre-setup () {
    kata="$(basename $(pwd))"   # kata: name of the exercise which is respective folder name
    make-exercise-repo
    config-local-username
    config-local-gpgsigning
}

pre-setup-with-remote () {
    kata="$(basename $(pwd))"   # kata: name of the exercise which is respective folder name
    make-bare-remote-repo 
    clone-remote-to-exercise
    config-local-username
    config-local-gpgsigning
}

post-setup () {
    clear-local-user
    clear-local-gpgsigning
}

[ "$TEST" = true ] || set +e 
