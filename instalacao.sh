echo "Iniciando Script"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew update
brew upgrade

printf "\n\nInstalando Aplicativos...\n"
brew install --cask appcleaner
brew install --cask balenaetcher
brew install --cask coda
brew install --cask firefox
brew install --cask google-chrome
brew install --cask hyper
brew install --cask iina
brew install --cask imageoptim
brew install --cask insomnia
brew install --cask visual-studio-code
brew install --cask opencore-configurator
brew install --cask openemu
brew install --cask plex-media-server
brew install --cask sequel-ace
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask vlc
brew install --cask whatsapp

printf "\n\nInstalando Lojas...\n"
brew install --cask steam
brew install --cask battle-net
brew install --cask epic-games

printf "\n\nInstalando Cordova...\n"
brew install node
npm install -g cordova

printf "\n\n"
echo -e "\e[1;32mSua instalção foi concluída!\e[0m" 
