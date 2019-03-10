# Andreas' dotfiles

This repository holds my dotfiles, bash settings, scripts and stuff. They are
linked into the user dir after successfully cloning this repo.

## Content

*.dotfiles/* bunch of custom scripts for bash etc.
*bins/* files that - at some point later - are linked into `usr/local/bin` during install

### Features

- fancy icons in bash
- bash aliases

## Installation

### Prerequisites

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- [nvm](https://github.com/creationix/nvm) `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash`
- [homebrew](https://brew.sh/index_de.html) `
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

These are optional but included in my default setup:
- [miniconda](https://conda.io/miniconda.html)
- [docker](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)
- [.NET Core](https://www.microsoft.com/net/learn/get-started/macos)
- [commitizen](https://github.com/commitizen/cz-cli) `npm install -g commitizen`
- [thefuck](https://github.com/nvbn/thefuck) fix terminal stupidities

### Get dotfiles installed

For installation remove all local dotfiles that you want synced. The installation does
not overwrite existing files.. I hope.

```bash
cd dotfiles
./install.sh
```

## Awesome Tools

Keeping a list of tools I stumble upon for future reference

| Tool | Context |
|----|----|
| [Pipenv](https://pipenv.readthedocs.io/en/latest/) | package manager for python |
| [Pyflame](https://github.com/uber/pyflame) | Profiling python code |
| [jq.node](https://github.com/FGRibreau/jq.node) | JSON manipulation in terminal with FP |
| [nodemon](https://nodemon.io/) | keep `Node.js` processes running with auto-restart on file change |
| [serve](https://github.com/zeit/serve#readme) | spawn local file server |
| [surge](https://www.npmjs.com/package/surge) | host static content with custom domains |
| [now](https://zeit.co/now) | deploy (open source) serverless node backends or static content |

## Recent changes

### 2019-03-10

- Update list of used tools
- some minor aliases

### 2017-12-09

- switch to on zsh
- add links to mandatory installs
- generalize configs
- update global npm packages

### v1.0

- initial commit
- best parts of https://github.com/kentcdodds/dotfiles/blob/master/.bash_profile
and https://github.com/ctrabold/dotfiles
