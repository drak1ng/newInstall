#!/bin/bash



printf "\n"
echo "INICIANDO INSTALAÇÃO" 
printf "\n"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo -e "\033[1;34mInstalando Homebrew... \033[0m"
    printf "\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
echo -e "\033[1;34mAtualizando Homebrew... \033[0m"
brew update
brew upgrade

printf "\n"
echo -e "\033[1;34mFONTS\033[0m"
echo " - FiraCode"
echo " - Nerd Font"
printf "\n"

read -p "Deseja instalar Fonts? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask font-fira-code
        brew install --cask font-hack-nerd-font
    ;;
esac

printf "\n"
echo -e "\033[1;34mNAVEGADORES\033[0m"
echo " - Google Chrome"
echo " - Firefox"
echo " - Microsoft Edge"
printf "\n"

read -p "Deseja instalar Navegadores? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask google-chrome
        brew install --cask firefox
        brew install --cask microsoft-edge
    ;;
esac

printf "\n"
echo -e "\033[1;34mUTILITÁRIOS\033[0m"
echo " - AppCleaner"
echo " - The Unarchiver"
echo " - Transmission"
echo " - VLC"
echo " - IINA"
echo " - Spotify"
echo " - Whatsapp"
echo " - Plex Media Server"
echo " - Jellyfin"
printf "\n"

read -p "Deseja instalar Utilitários? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask appcleaner
        brew install --cask spotify
        brew install --cask the-unarchiver
        brew install --cask transmission
        brew install --cask vlc
        brew install --cask iina
        brew install --cask whatsapp
        brew install --cask plex-media-server
        brew install --cask jellyfin
    ;;
esac

printf "\n"
echo -e "\033[1;34mLOJAS DE JOGOS\033[0m"
echo " - Steam"
echo " - Battle.net"
echo " - Epic Games"
echo " - Openemu"
printf "\n"

read -p "Deseja instalar Loja de Jogos? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask steam
        brew install --cask battle-net
        brew install --cask epic-games
        brew install --cask openemu
    ;;
esac

printf "\n"
echo -e "\033[1;34mFERRAMENTAS DE PROGRAMAÇÃO\033[0m"
echo " - Coda"
echo " - Sequel Ace"
echo " - ImageOptim"
printf "\n"

read -p "Deseja instalar Ferramentas de Programação? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask coda
        brew install --cask sequel-ace
        brew install --cask imageoptim
    ;;
esac

printf "\n"
echo -e "\033[1;34mFERRAMENTAS ADICIONAIS DE PROGRAMAÇÃO\033[0m"
echo " - Hyper"
echo " - Insomnia"
echo " - VS Code"
echo " - Balena Etcher"
echo " - Ngrok"
echo " - OpenCore Configurator"
printf "\n"

read -p "Deseja instalar Ferramentas Adicionais de Programação? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask hyper
        brew install --cask insomnia
        brew install --cask visual-studio-code
        brew install --cask balenaetcher
        brew install --cask ngrok
        brew install --cask opencore-configurator
    ;;
esac

printf "\n"
echo -e "\033[1;34mCORDOVA\033[0m"
echo " - Node.js"
echo " - Cordova"
echo " - OpenJDK"
printf "\n"

read -p "Deseja instalar Cordova? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install node
        npm install -g cordova
        brew install openjdk@8
        brew install --cask adoptopenjdk8
    ;;
esac
    

printf "\n\n"
echo -e "\033[1;32mINSTALAÇÃO CONCLUÍDA! \033[0m"
printf "\n"
