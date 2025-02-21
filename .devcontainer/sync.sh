#!/bin/bash

# This bash shell script allows us the synchronize specified files from the cpufrozen branch to the cpu, gpu, and gpu frozen branches

# Usage: ./sync.sh <file1> <file2> ... <fileN>
git stash
sleep 1
git checkout cpufrozen && yes | git checkout --patch gpufrozen -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
sleep 1
git checkout gpufrozen
sleep 1
git stash pop
