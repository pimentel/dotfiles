Harold Pimentel's dotfiles.

To add a submodule:

    git submodule add https://github.com/user/project.git

To clone:

    git clone https://github.com/pimentel/dotfiles.git
    git submodule init
    # This is for YouCompleteMe. Note: might be able to remove line above
    git submodule update --init --recursive
