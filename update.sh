#!/bin/bash

#
# A simple script to update my computer's various programs.
# This script can be added to crontab 
# 
# At the moment it updates: 
#   * vim programs
#   * brew updates
#   * brew upgrates
#   * a cleanup after all operations

# update vim plugins
echo "updating vim plugins"
cd ~/.dotfiles/.vim/bundle
for D in `find . -type d -depth 1 | grep -v 'deleted'`
do
    cd "${D}"; git pull origin master; cd ..
done

# update brew 
echo "updating brew"
brew update

# upgrade software installed via brew
echo "upgrading brew softwares"
brew upgrade

# perform a cleanup
cleanup
