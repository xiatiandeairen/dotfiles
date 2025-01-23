## Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
  - [Usage](#usage)
- [Thanks](#thanks)

---

## Introduction

&emsp;&emsp;Welcome to my **dotfiles** repository! This project contains my personal configuration files for various tools and environments, designed to quickly set up a new machine or synchronize settings across multiple devices.

&emsp;&emsp;With an easy-to-use deployment script, you can seamlessly deploy these dotfiles to any new system. The included `dot` command ensures that your configuration stays up-to-date by easily syncing and updating your files whenever changes are made.

## Features

- **Easy Deployment**: Quickly set up your development environment on any machine.
- **Automatic Syncing**: Use the `dot` command to backup, update, and synchronize configurations.
- **Minimal Setup**: Just clone, run the setup, and you're good to go!

## Installation 

```shell
curl -sSL https://raw.githubusercontent.com/xiatiandeairen/dotfiles/main/install.sh | bash
```

### Usage

```shell
Usage: dot <command> [target]

Commands:
    pull        Fetch the latest changes from the remote repository and merge them into the target branch (default: develop).
                Usage: dot pull 

    push        Push your local changes to the remote repository on the target branch (default: develop).
                Usage: dot push 

    commit      Stage all changes and commit them with a default message.
                Usage: dot commit

    diff        Show the differences between your local changes and the latest commit.
                Usage: dot diff

    cd          Change directory to the dotfiles repository.
                Usage: dot cd

    status      Show the current status of your dotfiles repository.
                Usage: dot status

    apply       Apply a patch or configuration from a specific source.
                Usage: dot apply [target]

    bootstrap   Initialize or set up the dotfiles (e.g., by installing dependencies).
                Usage: dot bootstrap

    benchmark   Run benchmark tests on the dotfiles setup.
                Usage: dot benchmark

    edit        use fzf to edit files.
                Usage: dot edit

```

## Thanks

* https://github.com/romkatv/powerlevel10k.git
* https://github.com/romkatv/zsh-bench.git
* https://github.com/zsh-users/zaw.git
* https://github.com/sainnhe/tmux-fzf.git
* https://github.com/tmux-plugins/tpm.git

