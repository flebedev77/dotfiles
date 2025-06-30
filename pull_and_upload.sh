#!/bin/sh

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

"$SCRIPT_DIR/pull_from_local.sh"

printf "What did you change? "
read COMMIT_MESSAGE

if [ -n "$COMMIT_MESSAGE" ]; then
  pushd $SCRIPT_DIR
  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push
  popd 
else
  echo "Please provide a change message"
  exit 1
fi
