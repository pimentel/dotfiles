Harold Pimentel's dotfiles.

To add a submodule:

    git submodule add https://github.com/user/project.git

To clone:

    git init
    git remote add origin https://github.com/pimentel/dotfiles.git
    git fetch origin
    git checkout -t origin/master
    git submodule update --init --recursive
