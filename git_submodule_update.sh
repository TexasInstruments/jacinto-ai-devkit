#!/bin/bash

echo 'updating submodules...'
git submodule update --recursive --remote
git submodule foreach git checkout master
git submodule foreach git pull
