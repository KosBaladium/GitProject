#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

local complete=0
local response
local regexpr='^[0-9]+$'
local numberfile

let numberfile=$(ls | wc -l)

echo "Starting program:"

while [[ $complete -lt 1 ]]
do
  echo "Enter your guess for how many files are in the current directory: "
  read response
  if ! [[ $response =~ $regexpr ]]
  then
    echo "Please enter a number (for example, such as \"3\" or \"5\")."
  elif [[ $response -lt $numberfile ]]
  then
    echo "That number is too low. Please try again."
  elif [[ $response -gt $numberfile ]]
  then
    echo "That number is too high. Please try again."
  else
    echo "Congratuations, that number is the number of files in the current directory!"
    local complete=1
  fi
done

echo "Ending program:"

}

guessinggame
