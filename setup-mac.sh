# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install vim
brew install node
brew install yarn

# Brew Cask
brew tap caskroom/cask

# apps
brew cask install alfred
brew cask install iterm2
brew cask install visual-studio-code
brew cask install firefox
brew cask install google-chrome
brew cask install postman
brew cask install macs-fan-control
brew cask install shiftit
brew cask install fastlane
brew cask install zeplin
brew cask install figma
brew cask install android-studio

# jenv
npm install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
source ~/.zshrc

# npm global
npm install -g n

# Brew Cask Version
brew tap homebrew/cask-versions
brew cask install docker-edge
brew install docker-compose

# Git
git config --global user.name "Mika Jihoon Yoon"
git config --global user.email dyngina@gmail.com

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
