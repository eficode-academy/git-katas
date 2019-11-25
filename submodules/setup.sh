#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo ${SCRIPT_PATH}

EXERCISE_DIR=${SCRIPT_PATH}/exercise

if [ -d ${EXERCISE_DIR} ]; then
  rm -rf ${EXERCISE_DIR}
fi

mkdir ${EXERCISE_DIR}

cd ${EXERCISE_DIR}

# Create component repo
mkdir -p remote/component
git init remote/component
cd remote/component

touch component.h
git add component.h
git commit -m "Touch component header"

# Convert to a bare repository and delete the original working directory.
mv .git ../component-repo.git
cd ../component-repo.git
git config --bool core.bare true
cd ..
rm -rf component/
cd ..

# And clone it so that it is ready for the exrcise.
git clone remote/component-repo.git component

# Create a product repository.
mkdir product
cd product
git init
touch product.h
git add product.h
git commit -m "Touch product header."
