. ..\utils\make-exercise-repo.ps1

Set-Content -Value "Ben\nTom\nSally" -Path names.txt
git add names.txt
git commit -m "Commit A: Added the names file"

Set-Content -Value "This is a lovely sentence" -Path sentence.txt
git add sentence.txt
git commit -m "Commit B: Added the sentence file"

git branch feature

Set-Content -Value "This is another delicous sentence" -Path other_sentence.txt
git add other_sentence.txt
git commit -m "Commit C: Added the additional other_sentence file"

Set-Content -Value "Cat\nDog\nMouse" -Path animals.txt
git add animals.txt
git commit -m "Commit D: Added the animals file"

git checkout feature

Set-Content -Value "1\n2\n6\n54" -Path numbers.txt
git add numbers.txt
git commit -m "Commit E: Added the numbers file"

Set-Content -Value "Craig\nJodie\nNathan" -Path names.txt
git add names.txt
git commit -m "Commit F: Updated and added more names to the file"

Set-Content -Value "Finally I think this is probably the last sentence to add" -Path sentence.txt
git add sentence.txt
git commit -m "Commit G: Updated the original sentence file"

Set-Content -Value "Boring extra file for no reason" -Path boring.txt
git add boring.txt
git commit -m "Commit H: Added the boring file"

git checkout master
