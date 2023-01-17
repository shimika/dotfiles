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
brew install awscli
brew install jq

# nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zprofile
source ~/.zprofile

# n
brew uninstall node
echo 'export N_PREFIX=$HOME/.n' >> ~/.zprofile
echo 'export PATH=$N_PREFIX/bin:$PATH' ~/.zprofile
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
brew install --cask pritunl

# jenv
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(jenv init -)"' >> ~/.zprofile
source ~/.zprofile

# java
brew tap AdoptOpenJDK/openjdk
sudo softwareupdate --install-rosetta # requires password
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install --cask adoptopenjdk/openjdk/adoptopenjdk11-openj9
brew install --cask adoptopenjdk/openjdk/adoptopenjdk12

jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home


# Git
git config --global user.name "Mika Jihoon Yoon"
git config --global user.email dyngina@gmail.com
