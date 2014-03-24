#!/usr/bin/env bash

echo "Repo URL:"
read repo_url
plugin_name=${repo_url##*/}
plugin_name=${plugin_name%.*}
git submodule add $repo_url vim/bundle/$plugin_name
echo "$plugin_name added!"
