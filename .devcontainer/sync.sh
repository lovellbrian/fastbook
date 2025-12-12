#!/bin/bash

# This bash shell script allows us the synchronize specified files from the cpufrozen branch to the cpu, gpu, and gpu frozen branches

# Usage: .devcontainer/sync.sh <file1> <file2> ... <fileN>
git stash
sleep 1
git checkout gpufrozen && yes | git checkout --patch gpufrozen -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
sleep 1
git checkout gpu && yes | git checkout --patch gpu -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
sleep 1
git checkout cpu && yes | git checkout --patch cpu -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
sleep 1
git checkout cpufrozen
sleep 1
git stash pop
