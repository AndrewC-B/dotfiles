# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Bobthefish
set -g theme_display_vagrant yes
set -g theme_display_hostname ssh

# Tmux session management.
#   List all sessions: mux
#   Switch to session, or create: mux my-session

function mux
  set -l name $argv[1]
  if test -z $name;
    tmux ls
    return
  end
  tmux attach -t $name; or tmux new -s $name
end