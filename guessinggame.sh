#!/bin/bash

function guess_files {
    local num_files=$(ls -1 | wc -l)
    while true; do
        echo "Guess how many files are in the current directory:"
        read guess
        if [[ $guess -lt $num_files ]]; then
            echo "Too low!"
        elif [[ $guess -gt $num_files ]]; then
            echo "Too high!"
        else
            echo "Congratulations! You guessed the correct number of files: $num_files"
            break
        fi
    done
}

guess_files
