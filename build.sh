#!/bin/bash

# Check that we are on the master branch.
git_branch=$(git branch --show-current)

if [ $git_branch != "master" ]; then
    echo "Current branch is $git_branch, need to switch to master before building."
    exit 1
fi

# Check that we have not deviated from a commit.
if ! git diff --exit-code ; then
    echo "Please reset working directory using 'git reset --hard'."
    exit 1
fi

# Pull the latest commit from the origin.
if ! git pull ; then
    echo "Please resolve the merge conflict before continuing."
    exit 1
fi

# Make sure all gems are up-to-date.
if ! bundle install ; then
    echo "Failed to run 'bundle install' - is it installed?"
    exit 1
fi

# Check warnings and errors from Jekyll.
if ! bundle exec jekyll doctor ; then
    echo "Please resolve warnings before building the website."
    exit 1
fi

# Build a production version of the website.
if ! JEKYLL_ENV=production bundle exec jekyll build ; then
    echo "There was an error building the website - please fix the issues before re-running the script."
    exit 1
fi

echo "The website was built successfully!"
