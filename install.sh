#!/bin/bash
if [ ! -d "$HOME/Documents/MiseAJourEPG/" ]; then
  mkdir $HOME/Documents/MiseAJourEPG/
fi
if [ ! -d "$HOME/.icons/" ]; then
  mkdir $HOME/.icons/
fi
if [ ! -d "$HOME/.local/bin/" ]; then
  mkdir $HOME/.local/bin/
fi
if [ ! -d "$HOME/.xmltv/" ]; then
  mkdir $HOME/.xmltv/
fi
if [ ! -d "$HOME/Documents/MiseAJourEPG/xmltv" ]; then
  mkdir $HOME/Documents/MiseAJourEPG/xmltv/
fi
cp MiseAJourEPG.sh $HOME/.local/bin/
cp tvguide-logo-epg.png $HOME/.icons
cp MiseAJourEPG.desktop $HOME/.local/share/applications/
cp tv_grab_fr_telerama $HOME/Documents/MiseAJourEPG/
cp tv_grab_fr_telerama.conf $HOME/.xmltv/
cp playlist_Freebox.m3u $HOME/Documents/MiseAJourEPG/
unzip -o Logos.zip -d $HOME/Documents/MiseAJourEPG/
chmod +x $HOME/.local/bin/MiseAJourEPG.sh
chmod +x $HOME/.local/share/applications/MiseAJourEPG.desktop
chmod +x $HOME/Documents/MiseAJourEPG/tv_grab_fr_telerama
chmod +x ./uninstall.sh
echo 'export PATH="${PATH}:~/.local/bin"' >> $HOME/.bashrc

