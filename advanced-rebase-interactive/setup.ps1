. ..\utils\make-exercise-repo.ps1

git commit --allow-empty -m "Initial commit"

git tag v0.0

Set-Content -Value "Hello" -Path hello.code

git add hello.code
git commit -m "Helo Volrd feature"

Set-Content -Value "HelloWrld?" -Path hello.code
Set-Content -Value "Unrelated stuff!" -Path other.code

git add -A
git commit -am "Finished HW feature"

Set-Content -Value "Hello World!" -Path hello.code

git commit -am "Really made the thingy done"

Set-Content -Value "println DEBUG" -Path hello.code

git commit -am "debugging"

Set-Content -Value "4321pass" -Path private.secret

git add private.secret
git commit -m "important secret"

Set-Content -Value "# THE Hello World program" -Path README.md

git add README.md
git commit -m "Add doc - step 1"

Set-Content -Value "# THE Ultimate Hello World program" -Path README.md

git commit -am "Add doc - step 2"

Add-Content -Value "" -Path README.md
Add-Content -Value "This program does exactly what it says" -Path README.md

git commit -am "Add doc - step 3"

Set-Content -Value "does_it_work(hello.code)" -Path hello.test

git add hello.test
git commit -m "Test for feature hello world"

Set-Content -Value "does_it_work(hello.code);" -Path hello.test

git commit -am "I forgot a semicolon"
