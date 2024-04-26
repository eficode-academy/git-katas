# Source utils
. ..\utils\make-exercise-repo.ps1

# Prep branches
Set-Content -Value "Step 1 before changes" -Path step1.pipeline
Set-Content -Value "Step 2 will remain unchanged" -Path step2.pipeline
Set-Content -Value "Step 3 before changes" -Path step3.pipeline
Set-Content -Value "Utilities before changes" -Path stepx.utils
git add .
git commit -m "Initial commit"

git checkout -b pipeline-improvement
Set-Content -Value "Step 1 after improvement" -Path step1.pipeline
Set-Content -Value "Step 3 after changes" -Path step3.pipeline
Set-Content -Value "Utilities after changes" -Path stepx.utils
git add .
git commit -m "Improve pipeline - name change"