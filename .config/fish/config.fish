set -x PHP_SYBASE_CT /usr
set -x PERL_MB_OPT --install-base \"/home/bzelic/.perl\";
set -x PERL_MM_OPT INSTALL_BASE=/home/bzelic/.perl;
set -x JAVA_HOME /usr/lib/jvm/java-7-oracle
set -gx PATH /home/bzelic/.vimpkg/bin $PATH

source /home/bzelic/.phpbrew/phpbrew.fish

# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

eval (thefuck --alias | tr '\n' ';')
alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
