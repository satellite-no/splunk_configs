#!/bin/bash
#
# Rename Files
# By: Sean Elliott
#
# Date: 2020-07-28

# Get user input for renaming
read -p 'Organization abbreviation: ' abbr

# Find items with org name
list=`find . -type d -name 'org*'`

# Rename files to desired name
for item in $list; do 
  mv "$item" "${item/org/$abbr}"; 
done
