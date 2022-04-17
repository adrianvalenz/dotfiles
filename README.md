
# Dotfiles and development environment setup instructions

## Installing packages

1. Install Kitty Terminal via: https://sw.kovidgoyal.net/kitty/

`curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`

2. Install Homebrew via: https://brew.sh/

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

3. Install Oh-My-ZSH via: https://ohmyz.sh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

4. Install Ruby via: https://github.com/rbenv/rbenv

`brew install rbenv ruby-build`

`rbenv init` and follow instructions.

Part of the instructions is placing this line of code in your `.zshrc` file
`eval "$(rbenv init - zsh)"`

Close your terminal and re-open and run:

`curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash`

Install a Ruby version with: 

`rbenv install 3.1.2` (latest release or your preference)

5. Intall NPM via: 

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

`nvm install node`

Restart terminal and:

`nvm use node`

Confirm you are using the latest version of Node and NPM

`node -v && npm -v`

## Fonts

In my config file for Kitty terminal I have it set to use JetBrains Mono. Download and install the font from here: https://www.jetbrains.com/lp/mono/

## Link symbolically configuration files to your user folder

At the root of your user folder (`/Users/yourusername` in macOS)

`git clone` this repo to the root of your user directory...

It should create a directory called `dotfiles`

From your root without `cd`'ing into the newly cloned `dotfiles` directory run:

`.dotfiles/script/macos/brew.sh`

This will install some apps and packages such as neovim, lua, tmux, and more. Feel free to look in the file and add/remove as you please.

Then to link the config files for some of the packages, run:

`./dotfiles/scripts/install.sh`

