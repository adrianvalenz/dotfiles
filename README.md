
Install Homebrew via: https://brew.sh/
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Install Oh-My-ZSH via: https://ohmyz.sh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install Ruby via: https://github.com/rbenv/rbenv
`brew install rbenv ruby-build`
`rbenv init` and follow instructions

Close your terminal and re-open and run:
`curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash`

Install a Ruby version with: 
`rbenv install 3.1.2"

Intall NPM via: 
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`
`nvm install node`
Restart terminal and:
`nvm use node`

Confirm you are using the latest version of Node and NPM
`node -v && npm -v`

git clone this repo to the root of your user directory...
it should create a directory called `dotfiles`
from your root, or outside of your dotfile directory run `./dotfiles/scripts/install.sh`

Before running `./dotfiles/script/macos/brew.sh` make sure you installed and configured Homebrew for macOS.
