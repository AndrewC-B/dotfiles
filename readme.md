## Fish

### Linux

```
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update  
sudo apt-get -y install fish
```

### Mac
`brew install fish`

### All
`cp config.fish ~/.config/fish/`


## Oh My Fish

```
curl -L https://get.oh-my.fish > install
fish install --noninteractive
rm install
fish -c "omf install bobthefish"
echo "set -g theme_display_vagrant yes" >> ~/.config/fish/config.fish
```

# Virtual env
```
sudo -H apt-get -y install python-pip
sudo -H pip install virtualfish 
```

## Tmux
`cp .tmux.conf ~/`

### Cheatsheet
Prefix: `C-z` (`⌃Z`)

#### Sessions
- List sessions: `mux`
- New session: `mux my-session`
- Open existing session: `mux my-session`\
- Detach from session: `prefix: d`

#### Windows
- New window: `prefix: c`

#### Panes
- New vertical split pane: `prefix: v`
- New horizontal split pane: `prefix: h`
- Close pane: `exit` (ie: exit that shell)
- Switch pane: `⌃ arrow keys`
- Resize pane: `⌥ arrow keys`
