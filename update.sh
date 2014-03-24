#!/usr/bin/env bash

echo "Update starting"
git submodule foreach git pull origin master --recurse-submodules
echo "Update finished"
