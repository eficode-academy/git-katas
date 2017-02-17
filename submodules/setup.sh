rm -rf exercise
mkdir exercise

cd exercise

mkdir ComponentA

cd ComponentA
git init
touch CompA.h
git add CompA.h
git commit -m "component A"

cd ..

mkdir ComponentB
cd ComponentB
git init
touch CompB.h
git add CompB.h
git commit -m "component B"

cd ..


mkdir productA
cd productA
git init
touch ProductA.h
git add ProductA.h
git commit -m "productA"
