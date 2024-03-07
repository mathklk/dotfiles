#!/bin/bash
TMP="/tmp/dotfiles"
rm -rf ${TMP}
git clone --depth 1 https://github.com/mathklk/dotfiles.git ${TMP}
cat ${TMP}/.bashrc >> ~/.bashrc
cat ${TMP}/.inputrc >> ~/.inputrc
cat ${TMP}/.bash_aliases >> ~/.bash_aliases
echo "Setup complete. Start new session to apply all effects"