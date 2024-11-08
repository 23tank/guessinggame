#!/bin/bash

# Function to count the files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Main game logic
correct_count=$(count_files)
guess=-1

echo "Guess how many files are in the current directory:"

while [[ $guess -ne $correct_count ]]; do
    read guess
    if [[ $guess -lt $correct_count ]]; then
        echo "Too low. Try again:"
    elif [[ $guess -gt $correct_count ]]; then
        echo "Too high. Try again:"
    fi
done

echo "Congratulations! You guessed the correct number of files."
