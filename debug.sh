#!/bin/bash

home=`env | grep ^HOME= | cut -c 6-`

getEnvVarPath() {
  if [[ "$(uname)" == "Darwin" ]]; then
    # Mac OS X 操作系统
    if [[ "$SHELL" == *"bin/zsh" ]]; then
      echo "$home/.zshrc"
    else
      echo "$home/.bash_profile"
    fi
  elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    # GNU/Linux操作系统
    if [[ "$SHELL" == *"bin/zsh" ]]; then
      echo "$home/.zshrc"
    else
      echo "$home/.bashrc"
    fi
  elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]]; then
    # Windows NT操作系统
    echo ''
  fi
}

echo "env: $(getEnvVarPath)"
source "$(getEnvVarPath)" 
