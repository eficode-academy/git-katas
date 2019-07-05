. ..\utils\make-exercise-repo.ps1

for ($i=1; $i -le 10; $i++) {
	Set-Content -Value $i -Path "$i.txt"

	git add .
	git commit -m $i
}
