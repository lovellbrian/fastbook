#!/bin/bash

# This bash shell script allows us the synchronize specified files from the gpufrozen branch to the cpu, gpu, and cpufrozen frozen branches

# Usage: .devcontainer/sync.sh <file1> <file2> ... <fileN>
git stash
sleep 1
git checkout cpufrozen && yes | git checkout --patch gpufrozen -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
git checkout cpu && yes | git checkout --patch gpufrozen -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
git checkout gpu && yes | git checkout --patch gpufrozen -- $@
sleep 1
git add $@ && git commit -m "Sync" && git push
sleep 1
git checkout gpufrozen
sleep 1
git stash pop
