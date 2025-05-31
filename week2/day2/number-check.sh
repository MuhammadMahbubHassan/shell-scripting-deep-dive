#!/bin/bash

#function to check if number is even or odd

check_number_type(){
local num=$1
if ((num % 2 == 0)); then
 echo "$num is Even"
else
 echo "$num is Odd"
fi
}

#Prompt user for input

read -p "Enter a number: " input

#Input validation (only digits)

if ! [[ "$input" =~ ^[0-9]+$ ]]; then
 echo "Invalid input. Please enter a positive integer"
exit 1
fi

#call the function

check_number_type "$input"


