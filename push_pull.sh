#!/bin/bash

# Script for Git Push and Pull
echo "Starting Git Push/Pull Script..."

git pull origin main || {
    echo "Failed to pull changes. Check your branch or network."
    exit 1
}

echo "Changes pulled successfully."

git add .

echo "Enter commit message:"
read commitMessage

git commit -m "$commitMessage" || {
    echo "Nothing to commit."
}

git push origin main || {
    echo "Failed to push changes. Check your branch or credentials."
    exit 1
}

echo "Changes pushed successfully."