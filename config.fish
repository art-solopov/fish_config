set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

# Path manipulation
set local_path $PATH
set local_path "$HOME/built-software/emacs-24.4/dist/bin" $local_path
set local_path $local_path /usr/local/heroku/bin

# NVM
set local_path $local_path "$HOME/npm_global/bin"
function nvm
         bass source ~/.nvm/nvm.sh ';' nvm $argv
end

set -x PATH $local_path

# Virtualenvwrapper
set -x WORKON_HOME "$HOME/.virtualenvs"
set -x PROJECT_HOME "$HOME/Projects"

function workon
         set ct (count $argv)
         if test $ct -ne 0
            set project $argv[1]
         else
            set project (basename (pwd))
         end
         set -x VIRTUAL_ENV_DISABLE_PROMPT 1
         source "$WORKON_HOME/$project/bin/activate.fish"
         cd "$PROJECT_HOME/$project"
end

rvm default