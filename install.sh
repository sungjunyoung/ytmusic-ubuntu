#!/bin/bash

DEFAULT_INSTALL_DIR="${HOME}/Applications/ytmusic-ubuntu"
read -p "Your installation directory (default: ${DEFAULT_INSTALL_DIR}): " INSTALL_DIR
if [[ "${INSTALL_DIR}" == "" ]]; then
  INSTALL_DIR=${DEFAULT_INSTALL_DIR}
fi

if [[ ! -d "${INSTALL_DIR}" ]]; then
  read -p "Directory ${INSTALL_DIR} not exists. Do you want to create a directory? [y/n]: " OK
  if [[ "${OK}" == "y" || "${OK}" == "yes" ]]; then
    mkdir -p ${INSTALL_DIR}
  else
    echo "Aborted."
    exit 1
  fi
fi

INSTALL_DIR="${INSTALL_DIR}/"
BASE_DIR="`dirname ${0}`/"

set -e
set +x

# copy application
yes | cp -r ${BASE_DIR}/* ${INSTALL_DIR}

# unzip resources & generate desktop entry
pushd ${INSTALL_DIR}
  tar -zxvf resources.tar.gz
  tar -zxvf youtube-music.tar.gz
  cat ./YoutubeMusic.desktop.template | sed "s|{{PATH}}|`pwd`|g" > ./YoutubeMusic.desktop
popd

echo ""
echo "Select your desktop entry location"
echo " 1) /usr/share/applications/"
echo " 2) ${HOME}/.local/share/applications/"
read -p 'Which location do you prefer? [1/2]: ' SELECTED

# select desktop entry directory
ENTRY_DIR=""
if [[ "${SELECTED}" == "1" ]]; then
  ENTRY_DIR="/usr/share/applications/"
elif [[ "${SELECTED}" == "2" ]]; then
  ENTRY_DIR="${HOME}/.local/share/applications/"
else
  echo "Aborted."
  exit 1
fi

# move desktop entry
pushd ${INSTALL_DIR}
  mv ./YoutubeMusic.desktop ${ENTRY_DIR}
popd

echo "Done."
