#!/bin/bash
# Création des dossiers pour utiliser l'EPG
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
# Copie des fichiers dans les réportoires créés
cp MiseAJourEPG.sh $HOME/.local/bin/
cp MiseAJourConfigEPG.sh $HOME/.local/bin/
cp tvguide-logo-epg.png $HOME/.icons
cp tvguide-logo-epg-config.png $HOME/.icons
cp MiseAJourEPG.desktop $HOME/.local/share/applications/
cp MiseAJourConfigEPG.desktop $HOME/.local/share/applications/
cp tv_grab_fr_telerama $HOME/Documents/MiseAJourEPG/
cp tv_grab_fr_telerama.conf $HOME/.xmltv/
cp playlist_Freebox.m3u $HOME/Documents/MiseAJourEPG/

# Pour rendre exécutable l'ensemble des fichiers
chmod +x $HOME/.local/bin/MiseAJourEPG.sh
chmod +x $HOME/.local/bin/MiseAJourConfigEPG.sh
chmod +x $HOME/.local/share/applications/MiseAJourEPG.desktop
chmod +x $HOME/.local/share/applications/MiseAJourConfigEPG.desktop
chmod +x $HOME/Documents/MiseAJourEPG/tv_grab_fr_telerama
chmod +x ./uninstall.sh
echo 'export PATH="${PATH}:~/.local/bin"' >> $HOME/.bashrc
# Première exécution du script de Zubrick config + 1er téléchargement des programmes 
bash $HOME/Documents/MiseAJourEPG/tv_grab_fr_telerama --configure --gui
bash $HOME/Documents/MiseAJourEPG/tv_grab_fr_telerama --output=$HOME/Documents/MiseAJourEPG/xmltv/complet.xml --gui
mv $HOME/Documents/MiseAJourEPG/xmltv/complet.xml $HOME/Documents/MiseAJourEPG/complet.xml
# Mise en place de l'utilisation de crontab pour executer le script quotidiennement
crontab -l > /tmp/MiseEPG.txt # export de la crontab
echo "0 */24 * * * sh -c '$HOME/.local/bin/MiseAJourEPG.sh'" >> /tmp/MiseEPG.txt # ajout de la ligne dans le fichier temporaire
crontab /tmp/MiseEPG.txt # import de la crontab
rm /tmp/MiseEPG.txt # le fichier temporaire ne sert plus à rien
# fin de l'installation.
exit 0
