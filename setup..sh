#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#

# Fail immediately if any errors occur
set -e

echo
echo "-----------------------------------------"
echo "Hi! I will set up your machine!"
echo "-----------------------------------------"
echo

echo "I need your password to work with the stuff"
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Setting up homebrew as first thing
source ${MY_DIR}/scripts/common/homebrew.sh

# Requires password, so it goes here
brew cask install github

source ${MY_DIR}/scripts/common/common-apps.sh
source ${MY_DIR}/scripts/common/vscode-setup.sh

# Commented oout due to line 26 - need to check
# source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/heroku.sh

# Dev environments

source ${MY_DIR}/scripts/environments/docker.sh
source ${MY_DIR}/scripts/environments/golang.sh
source ${MY_DIR}/scripts/environments/node.sh
source ${MY_DIR}/scripts/environments/python.sh
source ${MY_DIR}/scripts/environments/ruby.sh

echo
echo "-----------------------------------------"
echo "Done!"
echo "-----------------------------------------"