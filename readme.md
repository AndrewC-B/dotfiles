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

## Tmux
`cp .tmux.conf ~/`
