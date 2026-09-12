# Builds the exercise: a bare repository standing in for GitHub, and a clone of
# it with two commits already pushed - the second one carrying a typo.
#
# Run it from the repository root:
#   .\setup.ps1

# Start from a clean slate.
if (Test-Path .\remote) {
  Remove-Item .\remote -Recurse -Force -ErrorAction:Stop
}
if (Test-Path .\exercise) {
  Remove-Item .\exercise -Recurse -Force -ErrorAction:Stop
}

# The stand-in for GitHub.
git -c init.defaultBranch=master init --bare remote

# Your clone of it.
git clone ./remote exercise
Set-Location exercise

# Distinguish the setup commits from yours, and never sign them.
git config --local user.name "exercise setup bot"
git config --local user.email "setup-bot@example.com"
git config --local commit.gpgsign false

# Keep a reflog in the bare remote, so a clobbered commit can still be found.
git -C ..\remote config core.logAllRefUpdates true

Set-Content -Value "print('hello')" -Path app.py
git add app.py
git commit -m "Add app"
git push -u origin master

Add-Content -Value "print('login')" -Path app.py
git add app.py
git commit -m "Add lgoin feature"
git push

# The script that plays the part of a colleague pushing while you work.
Copy-Item ..\colleague-pushes-a-fix.ps1 colleague-pushes-a-fix.ps1

# From here on the commits are yours, so hand the identity back. Signing stays
# off, so a signing prompt cannot derail the exercise.
git config --local --unset user.name
git config --local --unset user.email
