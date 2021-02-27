#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -f ~/.vimrc ]; then
  echo "making a backup of existing .vimrc.."
  mv -v ~/.vimrc ~/.vimrc.back
fi

if [ -d ~/.vim ]; then
  echo "making a backup of existing .vim directory.."
  mv -v ~/.vim ~/.vim.back
fi

ln -s $DIR/dotconfigs/.vimrc ~/.vimrc
ln -s $DIR/dotconfigs/.vim ~/.vim

echo "Done"
