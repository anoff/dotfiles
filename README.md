Andreas' dotfiles
===
This repository holds my dotfiles, bash settings, scripts and stuff. They are
linked into the user dir after successfully cloning this repo.

## Content
*.dotfiles/* bunch of custom scripts for bash etc.
*bins/* files that - at some point later - are linked into `usr/local/bin` during install

### Features
* fancy icons in bash
* bash aliases

## Installation
For installation remove all local dotfiles that you want synced. The installation does
not overwrite existing files.. I hope.

```bash
cd dotfiles
./install.sh
```

## Recent changes
### v1.0
* initial commit
* best parts of https://github.com/kentcdodds/dotfiles/blob/master/.bash_profile
and https://github.com/ctrabold/dotfiles
