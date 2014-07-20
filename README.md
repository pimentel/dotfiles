# Harold Pimentel's dotfiles

## Git basics

To add a submodule:

    git submodule add git@github.com:user/project.git

To clone:

    git init
    git remote add origin git@github.com:pimentel/dotfiles.git
    git fetch origin
    git checkout -t origin/master
    git submodule update --init --recursive

## Python

I'm starting to work with virtualenvs. Setting up python on OSX:

    brew install python
    pip install virtualenv
    pip install virtualenvwrapper

Make sure to install the new python interpreter before installing MacVim (and
subsequently building YouCompleteMe).

The basic virtualenv I'm using is called 'gpy' for general python.

I'm also (obviously) using virtualenvwrapper to manage virtualenvs in
~/.virtualenv

## Vim

Make sure to install python before MacVim:

    brew install macvim --override-system-vim


## TODOs
- Add KeyRemap4MacBook config
- Add PCKeyboardHack config
