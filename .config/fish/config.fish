# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

#source completions/vault.fish
source ~/.config/fish/config.variables.fish

alias mk='minikube --alsologtostderr'
#eval (ssh-agent -c)
set -gx PATH /snap/bin $PATH

alias homeconfig '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
