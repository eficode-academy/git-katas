. ..\utils\make-exercise-repo.ps1

git commit --allow-empty -m "Initial commit"

git tag v0.0

Set-Content -Value "Hello World!" -Path hello.code
git add hello.code
git commit -m "Hello World feature"

Set-Content -Value "# THE Ultimate Helo Wrld program" -Path README.md
Add-Content -Value "" -Path README.md
Add-Content -Value "This program does exactly what it says" -Path README.md
git add README.md
git commit -m "Add documentation"

Set-Content -Value "Unrelated stuff!" -Path unrelated.stuff.code
git add unrelated.stuff.code
git commit -m "Add Unrelated stuff feature"

Set-Content -Value "does_it_work(hello.code);" -Path hello.test
git add hello.test
git commit -m "Test for feature hello world"
