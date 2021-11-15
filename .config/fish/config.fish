# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

#source completions/vault.fish
source ~/.config/fish/config.variables.fish
set -xg SUMMON_PROVIDER "/bin/cat"

alias mk='minikube --alsologtostderr'
#if test -z "$SSH_AGENT_PID"
#	eval (ssh-agent -c)
#	ssh-add ~/.ssh/id_rsa
#end
export GOPATH=$HOME/go
export GOROOT=(brew --prefix golang)/libexec
set -gx PATH {$GOPATH}/bin {$GOROOT}/bin ~/.local/bin /snap/bin $PATH
set -gx PATH $PATH $HOME/.krew/bin


alias homeconfig '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
