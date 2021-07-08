#!/bin/bash
git add _posts/*
git add images/*
COMMIT_MESSAGE="Add post $(date '+%m/%d/%Y')"
git commit -m "$COMMIT_MESSAGE"
git push origin master
