#!/usr/bin/bash

# Project
_HERE="$PWD"
_APP_NAME="yanigs"
_APP_PATH="$PWD/$_APP_NAME"

# Root
touch setup.py
touch {pyproject,settings,.secrets}.toml
touch requirements{-dev,-app,}.in

if ! [[ -r "$_HERE/pyproject.toml" ]]; then
  cp "$HOME/pyproject.toml" "$_HERE/pyproject.toml"
fi

# Application
mkdir -p $_APP_PATH/{config,database}
touch $_APP_PATH/VERSION.txt
touch $_APP_PATH/__main__.py
touch $_APP_PATH/{config,database,}/__init__.py

# Git
if ! [[ -r "$_HERE/.gitignore" ]]; then
  wget -q 'https://github.com/github/gitignore/raw/main/Python.gitignore' \
    -O "$_HERE/.gitignore"
fi

if ! grep -q ".secrets.toml" "$_HERE/.gitignore"; then
  echo '**.secrets.toml' >> "$_HERE/.gitignore"
fi
