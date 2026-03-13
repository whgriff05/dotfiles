# Basic Git Guide
*by Will Griffin, 2026*

## Downloads
[macOS](http://git-scm.com/download/mac) (although git may be installed, run `git -v` in the shell)
[Windows](https://gitforwindows.org/)

## Overview of Git
Edits are made in the working directory, which holds the actual files

The staging area is where edited files can be added to

The HEAD of a branch is where committed files go to

## Basic Repository Commands
- `git init` - to __start__ a __new__ repository in a folder
- `git clone` - to clone a repository from some upstream
    - typically will look like `git clone git@github.com:<user>/<repo>`
- `git add <file>` - add a file to the __staging area__
- `git commit -m "message"` - commit the files in the staging area to the head with a message
- `git push origin <branch name>` - push the files to the upstream repository
- `git switch <branch>` - switch to an __already existing__ branch
    - `git switch -c <branch>` - create and switch to a __new__ branch
- `git pull --rebase` - pull changes from the upstream's branch to your local branch
