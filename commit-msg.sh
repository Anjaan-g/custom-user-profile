#!/usr/bin/env bash
ARGS=$1
COMMIT_MSG=`head -n1 $ARGS`
PATTERN="^(feat|bugfix|ci|docs|settings|template|build):+[[:space:]]+[a-z]"
if ! [[ "$COMMIT_MSG" =~ $PATTERN ]]; then
    echo "Bad commit message '$COMMIT_MSG'. It must be in the format of 'feat: message' or 'bugfix: message' or
    'ci: message' or 'docs: message' or 'settings: message' or 'template: message' "
    exit 1
fi