# Bobthefish
set -g theme_display_vagrant yes
set -g theme_display_hostname ssh

# Virtualenv
eval (python -m virtualfish)  # Config for Virtualfish
set -x VIRTUAL_ENV_DISABLE_PROMPT 1  # Virtualenv prompt doesn't play nice with Fish

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

# SFTP file path
function sf
  if test -z $argv
    set dest $PWD
  else
    set dest $argv
  end
  echo sftp://$USER@(hostname):/$dest  # Transmit needs an extra slash in the file path for some reason.
end

# Misc
function config
  vim ~/.config/fish/config.fish
  source ~/.config/fish/config.fish
end
