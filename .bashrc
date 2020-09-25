#!bin/bash

# Work in progress

#Colors variables
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

git --version
# node -v
# npm -v
echo -e "\n${RED}Welcome user: $USERNAME"
echo -e "${WHITE}Folder: $PWD"
echo -e "Commands are set\n"

my_versions() {

  GitV=$(git --version)
  npmv=$(npm --version)
  echo -en "\n${RED}-------------- \nList of versions:\n"
  echo -en "\n${LIGHTBLUE}Git: $GitV \n"
  echo -en "\n${LIGHTBLUE}NodeJS: "
  node -v
  echo -en "\n${LIGHTBLUE}NPM: $npmv \n"
  echo -e "${RED}--------------\n"
}

PS1=''$LIGHTBLUE'[\d \t] '$GREEN'[\u@\h] '$RED'[\w] '$YELLOW'$(__git_ps1 "(%s)")'$'\n'$RED' > '$WHITE''

alias l='ls -lah --color=auto; pwd' #List everything with color
alias dev='cd c:/Development/; l; echo -e $YELLOW Development folder' #Change to your development folder
alias setproxy='HTTP_PROXY=; HTTPS_PROXY=; echo Proxy changed; proxy'
alias proxy='echo -e Scania proxy set for $PURPLE HTTP_PROXY:$HTTP_PROXY and $PURPLE HTTPS_PROXY:$HTTPS_PROXY'
alias versions="my_versions" # List versions if different programs,packages and much more
alias buildbash='source $HOME/.bashrc' #Build your new promt
alias home='cd $HOME; echo Home directory $HOME' # Home directory
alias fp='echo fetching repo...;git fetch --prune;echo pulling repo...; git pull';
alias c=' clear;Echo -e $RED cleared console....;'
