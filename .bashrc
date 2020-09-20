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
echo -e "${RED}Welcome user:$USERNAME"
echo -e "${WHITE}Folder: $PWD"
echo -e "Commands are set\n"

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' ; }

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


# PS1="$LIGHTBLUE[\d \t] $GREEN[\u@\h] $RED\w $YELLOW\$(parse_git_branch) >"


# export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


alias l='ls -lah'
alias dev='cd c:/dev'
alias setproxy='HTTP_PROXY=; HTTPS_PROXY=; echo Proxy changed'
alias proxy=' echo Scania proxy set for HTTP_PROXY:$HTTP_PROXY and HTTPS_PROXY:$HTTPS_PROXY'
alias versions="my_versions"

