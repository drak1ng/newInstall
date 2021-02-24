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

echo -e "\033[1;31m"
read -p "Deseja instalar Fonts? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask font-fira-code
        brew install --cask font-hack-nerd-font
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Navegadores? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask google-chrome
        brew install --cask firefox
        brew install --cask microsoft-edge
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Utilitários? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask appcleaner
        brew install --cask spotify
        brew install --cask the-unarchiver
        brew install --cask transmission
        brew install --cask vlc
        brew install --cask iina
        brew install --cask whatsapp
        brew install --cask plex-media-server
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Loja de Jogos? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask steam
        brew install --cask battle-net
        brew install --cask epic-games
        brew install --cask openemu
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Ferramentas de Programação? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask coda
        brew install --cask sequel-ace
        brew install --cask imageoptim
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Ferramentas de Adicionais? [Y/n] " response
echo -e "\033[0m"
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask hyper
        brew install --cask insomnia
        brew install --cask visual-studio-code
        brew install --cask balenaetcher
        brew install --cask ngrok
        brew install --cask opencore-configurator
    ;;
esac

echo -e "\033[1;31m"
read -p "Deseja instalar Cordova? [Y/n] " response
echo -e "\033[0m"
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
