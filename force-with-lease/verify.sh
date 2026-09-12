#! /usr/bin/env sh

# Run from the top folder:
#   ./verify.sh

if [ ! -d remote ]; then
  echo "There is no remote/ folder - run 'source setup.sh' first."
  exit 1
fi

if git -C remote log --oneline master | grep -q "Fix crash on empty password"; then
  echo "Your colleague's fix is safe on origin."
  exit 0
fi

echo "Your colleague's fix is gone from origin - you clobbered it."
echo "It is not lost yet. Find it again with:"
echo "    git -C remote reflog master"
exit 1
