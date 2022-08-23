#!/bin/bash
kata="submodules"

# Include utils
source ../utils/utils.sh

# First cleanup if there is an old exercise folder
rm -rf exercise

# Create exercise folder & go there
mkdir exercise
cd exercise

# Create remote repo
make-bare-remote-repo

# Clone it so that it is ready for the exercise
git clone remote component

# Commit a file to the component repo & push it to the remote
cd component
touch component.h
git add component.h
git commit -m "Touch component header"
git push
cd ..

# Create a product repo
git -c init.defaultBranch="$DEFAULT_BRANCH" init product

# Commit a file to the product repo
cd product
touch product.h
git add product.h
git commit -m "Touch product header"
cd ..
