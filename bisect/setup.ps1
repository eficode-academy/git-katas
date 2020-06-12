. ..\utils\make-exercise-repo.ps1

$testScript = @"
#! /usr/bin/env bash
if [[ `$(( `$(find * | wc -l) + 10 )) -gt 32 ]] ;then
  echo "test failed"
  exit 1
else
  echo "test passed"
  exit 0
fi
"@

Set-Content "test.sh" $testScript
git add *
git commit -m "Add tests"
git tag initial-commit

(1..100) | ForEach-Object {
  Out-File "$_.txt"
  git add .
  git commit -m "$_"
}
