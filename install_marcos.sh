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
echo -e "\033[1;34mNAVEGADORES\033[0m"
echo " - Firefox"
echo " - Microsoft Edge"
printf "\n"

read -p "Deseja instalar Navegadores? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask firefox
        brew install --cask microsoft-edge
    ;;
esac

printf "\n"
echo -e "\033[1;34mUTILITÁRIOS\033[0m"
echo " - AppCleaner"
echo " - The Unarchiver"
echo " - Transmission"
echo " - IINA"
echo " - Spotify"
echo " - Plex Media Server"
echo " - Jellyfin"
printf "\n"

read -p "Deseja instalar Utilitários? [Y/n] " response
case "$response" in [yY][eE][sS]|[yY]) 
        brew install --cask appcleaner
        brew install --cask spotify
        brew install --cask the-unarchiver
        brew install --cask iina
        brew install --cask plex-media-server
        brew install --cask jellyfin
    ;;
esac


printf "\n\n"
echo -e "\033[1;32mINSTALAÇÃO CONCLUÍDA! \033[0m"
printf "\n"
