set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

# Path manipulation
set local_path $PATH
set local_path "$HOME/built-software/emacs-24.4/dist/bin" $local_path
set local_path $local_path /usr/local/heroku/bin

set -x PATH $local_path

virtualenvwrapper
pkg

nvm use default > /dev/null

rvm default