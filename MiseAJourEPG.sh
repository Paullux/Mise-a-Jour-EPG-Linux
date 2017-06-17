#!/bin/bash
rm -rv $HOME/Documents/MiseAJourEPG/complet.zip
wget -P $HOME/Documents/MiseAJourEPG/ http://kevinpato.free.fr/xmltv/download/complet.zip
unzip -o $HOME/Documents/MiseAJourEPG/complet.zip -d /home/paul/Téléchargements/
rm -rv $HOME/Documents/MiseAJourEPG/complet.zip
