. ..\utils\make-exercise-repo.ps1

$testScript = @'
#! /usr/bin/env bash
echo "Running tests on commit $(git rev-parse --short HEAD)"
echo 'all tests pass'
exit 0
'@
Set-Content "test.sh" $testScript

git add 'test.sh'
git commit -m "Initial commit"
git tag initial-commit

Set-Content "1.txt" -Value ""
git add 1.txt
git commit -m "1"

Set-Content "2.txt" -Value ""
git add 2.txt
git commit -m "2"

Set-Content "3.txt" -Value ""
git add 3.txt

$testScript = @'
#! /usr/bin/env bash
echo "Running tests on commit $(git rev-parse --short HEAD)"
echo 'One failing test'
exit 1
'@
Set-Content "test.sh" $testScript

git add 'test.sh'
git commit -m "3"

Set-Content "4.txt" -Value ""
git add 4.txt
git commit -m "4"

Set-Content "5.txt" -Value ""
git add 5.txt
$testScript = @'
#! /usr/bin/env bash
echo "Running tests on commit $(git rev-parse --short HEAD)"
echo 'all tests pass'
exit 0
'@
Set-Content "test.sh" $testScript
git add 'test.sh'
git commit -m "5"

Set-Content "6.txt" -Value ""
git add 6.txt
git commit -m "6"


