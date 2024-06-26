#!/bin/bash

# Cria diretórios
mkdir -p autoload colors doc plugin

# Pega o tema
git clone https://github.com/dracula/vim dracula-theme
cp -r dracula-theme/autoload/dracula.vim autoload
cp -r dracula-theme/colors/* colors
cp -r dracula-theme/doc/* doc
rm -rf dracula-theme

# Pega emmet
git clone https://github.com/mattn/emmet-vim.git
cd emmet-vim
cp plugin/emmet.vim ../plugin/
cp autoload/emmet.vim ../autoload/
cp -a autoload/emmet ../autoload/
cd ..
rm -rf emmet-vim
