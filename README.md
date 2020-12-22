# Harsh's dotfiles repo

## Setup

First you need to clone this repo but unlike most the cloning is a bit special.

```sh
cd ~/Documents
git clone --bare https://github.com/hXtreme/dotfiles.git ./dotfiles
```

Now that the repo is cloned we need to checkout the master branch.
Before this make sure you have your dotfiles backed up in the off chance you
plan to preserve your configuration.

(The first time is the only time it'll be a bit painful, I promise)

```sh
/usr/bin/git --git-dir=$HOME/Documents/dotfiles --work-tree=$HOME checkout master
```

Once the repo is checked out you can use the alias `dot` and other
related aliases to manage this repo.
