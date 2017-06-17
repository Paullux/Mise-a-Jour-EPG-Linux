#!/bin/bash
if [ ! -d "$HOME/Documents/MiseAJourEPG/" ]; then
  mkdir $HOME/Documents/MiseAJourEPG/
fi
if [ ! -d "$HOME/.icons/" ]; then
  mkdir $HOME/.icons/
fi
cp MiseAJourEPG.sh $HOME/.local/bin/
cp tvguide-logo-epg.png $HOME/.icons
cp MiseAJourEPG.desktop $HOME/.local/share/applications/
chmod +x $HOME/.local/bin/MiseAJourEPG.sh
chmod +x $HOME/.local/share/applications/MiseAJourEPG.desktop
chmod +x ./uninstall.sh
