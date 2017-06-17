#!/bin/bash
rm -rf $HOME/Documents/MiseAJourEPG/
mkdir $HOME/Documents/MiseAJourEPG/
mkdir $HOME/.icons/
cp MiseAJourEPG.sh $HOME/Documents/MiseAJourEPG/
cp tvguide-logo-epg.png $HOME/.icons
cp MiseAJourEPG.desktop $HOME/.local/share/applications/
chmod +x $HOME/Documents/MiseAJourEPG/MiseAJourEPG.sh
chmod +x ./uninstall.sh
