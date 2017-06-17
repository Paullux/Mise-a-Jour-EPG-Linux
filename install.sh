#!/bin/bash
if [ ! -d "$HOME/Documents/MiseAJourEPG/" ]; then
  mkdir $HOME/Documents/MiseAJourEPG/
fi
if [ ! -d "$HOME/.icons/" ]; then
  mkdir $HOME/.icons/
fi
cp MiseAJourEPG.sh $HOME/Documents/MiseAJourEPG/
cp tvguide-logo-epg.png $HOME/.icons
cp MiseAJourEPG.desktop $HOME/.local/share/applications/
chmod +x $HOME/Documents/MiseAJourEPG/MiseAJourEPG.sh
chmod +x ./uninstall.sh
