#!/bin/bash
COMMENT=$1
BRANCH="nac_v1.0.7.dev6"
USER="psahuNasuni"

echo "****************** SET - Git Remote ORIGIN  ******************"

git remote set-url origin https://psahuNasuni@github.com/nasuni-labs/nasuni-azure-scheduler.git

echo "****************** STARTED - Git ADD  ******************"
git add .
echo "****************** COMPLETED - Git ADD  ******************"

echo "****************** STARTED - Git COMMIT  ******************"
if [[ "$COMMENT" == "" ]]; then
    DATENOW=`date`
    COMMENT="Readme File Updated on $DATENOW ."
fi
git commit -m "$COMMENT"
echo "****************** COMPLETED - Git COMMIT ******************"

echo "****************** STARTED - Git PUSH  ******************"
git push origin $BRANCH
echo "****************** COMPLETED - Git PUSH to $BRANCH  ******************"
