. ..\utils\make-exercise-repo.ps1

Copy-Item "..\base.py" -Destination "mergesort.py"

git add mergesort.py
git commit -m "Fake it till you make it - Faking mergesort using python .sort() method"

git checkout -b "Mergesort-Impl"

Copy-Item "..\righty.py" -Destination "mergesort.py"

git add mergesort.py
git commit -m "Mergesort implemented on feature branch"

git checkout master

Copy-Item "..\lefty.py" -Destination "mergesort.py"

git add mergesort.py
git commit -m "Mergesort implemented on master"
