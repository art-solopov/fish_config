# Virtualenvwrapper                    
set -x WORKON_HOME "$HOME/.virtualenvs"
set -x PROJECT_HOME "$HOME/Projects"

function virtualenvwrapper
end

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