#!/bin/bash
#Script: hello_user.sh
#Purpose: ask user for their name and greet them

read -p "Enter your name: " username

if [ -z "$username" ]; then
  echo "You didn't enter a name. Existing!!"
  exit 1

fi

echo "Hello, $username! wecome to the world of the BASH Scripting" 


