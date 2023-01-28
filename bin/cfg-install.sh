git clone --bare git@github.com:BojanZelic/config.git $HOME/.cfg
function home_config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
home_config checkout -f master
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    home_config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
home_config checkout -f master
home_config config status.showUntrackedFiles no
home_config submodule init
home_config submodule update
touch ~/.config/fish/config.variables.fish
