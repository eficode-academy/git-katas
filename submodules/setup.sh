#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo ${SCRIPT_PATH}

EXERCISE_DIR=${SCRIPT_PATH}/exercise

if [ -d ${EXERCISE_DIR} ]; then
  rm -rf ${EXERCISE_DIR}
fi

mkdir ${EXERCISE_DIR}

cd ${EXERCISE_DIR}

mkdir component

cd component
git init
touch component.h
git add component.h
git commit -m "Touch component header."

cd ..

mkdir product
cd product
git init
touch product.h
git add product.h
git commit -m "Touch product header."
