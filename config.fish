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