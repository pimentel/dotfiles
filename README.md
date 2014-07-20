Harold Pimentel's dotfiles.

To add a submodule:

    git submodule add git@github.com:user/project.git

To clone:

    git init
    git remote add origin git@github.com:pimentel/dotfiles.git
    git fetch origin
    git checkout -t origin/master
    git submodule update --init --recursive
