#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s -f $DIR/dotconfigs/.tmux.conf ~/.tmux.conf
ln -s -f $DIR/dotconfigs/.tmux.conf.local ~/.tmux.conf.local
