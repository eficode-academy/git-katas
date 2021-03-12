#!/usr/bin/env bash

set -ue

[[ ${debug:-} == true ]] && set -x

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo ${SCRIPT_PATH}

EXERCISE_DIR=${SCRIPT_PATH}/exercise

###
#
# Basic setup
#
###
if [ -d ${EXERCISE_DIR} ]; then
  rm -rf ${EXERCISE_DIR}
fi


mkdir ${EXERCISE_DIR}

cd ${EXERCISE_DIR}

mkdir component

cd component
git -c init.defaultBranch=master init
echo "1st component commit" >> component.h
git add component.h
git commit -m "1st component commit"

cd ..

mkdir product
cd product
git -c init.defaultBranch=master init
echo "1st  product commit" >> product.h
git add product.h
git commit -m "1st product commit"

[[ ${replay:-} == true ]] || exit 0

set -x

echo "Press any key to next step"
read -r cont

git remote add component ../component/.git

echo "Press any key to next step"
read -r cont

git subtree add --prefix component component master

echo "Press any key to next step"
read -r cont

cd ../component
echo "2nd component commit" >> component.h
git add component.h
git commit -m "2nd component commit"
cd ../product

echo "Press any key to next step"
read -r cont
git subtree pull --prefix component component master

echo "Press any key to next step"
read -r cont
echo "2nd product commit - this time under component directory" >> component/component.h
git add component/component.h
git commit -m "2nd product commit - this time under component directory"

echo "Press any key to next step"
read -r cont
git subtree push --prefix component component patch # NOTE: new branch in the remote repo.



