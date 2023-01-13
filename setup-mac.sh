# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install vim
brew install node
brew install yarn
brew install nvm
brew install fastlane
brew install n
brew install docker-compose

# nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zprofile
source ~/.zprofile

# lokalise2
brew tap lokalise/cli-2
brew install lokalise2

# Brew Cask
brew tap homebrew/cask
brew tap homebrew/cask-versions

# apps
brew install --cask alfred
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask postman
brew install --cask macs-fan-control
brew install --cask tiles
brew install --cask zeplin
brew install --cask figma
brew install --cask android-studio
brew install --cask docker-edge

# jenv
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(jenv init -)"' >> ~/.zprofile
source ~/.zprofile

# Git
git config --global user.name "Mika Jihoon Yoon"
git config --global user.email dyngina@gmail.com
