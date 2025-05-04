#!/bin/bash

# github >> /usr/local/bin
# 2025-05-04

# Set the Git repository URL
REPO_URL="https://github.com/jackblow33/debian.git"

# Function to clone a Git repository
function clone_repo() {
    git clone "$REPO_URL"
}

# Function to add and commit changes
function commit_changes() {
    git add .
    git commit -m "Update from script"
}

# Function to push changes to the remote repository
function push_changes() {
    git push origin master
}

# Function to pull the latest changes from the remote repository
function pull_changes() {
    git pull
}

# Main script
echo "Choose an option:"
echo "1. Clone repository"
echo "2. Commit changes"
echo "3. Push changes"
echo "4. Pull changes"
echo "5. Exit"

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        clone_repo
        ;;
    2)
        commit_changes
        ;;
    3)
        push_changes
        ;;
    4)
        pull_changes
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
esac
