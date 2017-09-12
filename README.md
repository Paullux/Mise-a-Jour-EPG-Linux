# Mise-a-Jour-EPG-Linux

J'utilise Kodi, avec l'Add-On "PVR simple iptv" pour regarder la tv sur mon PC sous Linux.

zubrick propose sur son github (https://github.com/zubrick/tv_grab_fr_telerama) un script perl qui permet de récupérer un EPG gratuit pour la France.
J'ai réutulisé son travail pour mettre à jour l'EPG sur mon PC automatiquement sans avoir à trop à intervenir.

commande à effectuer en tant qu'utilisateur courant :

chmod +x install.sh	

./install.sh

Si vous voulez automatiser au maximum la mise à jour l'EPG, penser à ajouter la mise à jour de l'EPG au programme au démarrage.
Le temps de compilation de la liste xmltv étant assez long (une 20aine de minute pour moi) il faut plutôt essayer de n'exécuter l'ensemble du programme qu'un fois par jour ou moins.


Dans l'extention de Kodi : "PVR Simple IPTV" :

 => Choisir playlist local et choisir le fichiers m3u déplacer dans "Documents/MiseAJourEPG/" si vous avez exécuter install.sh (le fichier marche seulement si vous êtes chez Free, sinon faudra éditer votre propre fichier m3u)
 
 => Ensuite choisir xml local (après avoir lancé le lanceur depuis le menu de votre environnement) le fichier xml se situe dans "Documents/MiseAJourEPG/"
 
 => Et finalement, pour les logos choisir logos locaux et choisir le dossier "Logo" créer dans "Documents/MiseAJourEPG/" par install.sh qui a dézippé le fichier "Logo.zip" présent dans le dépot.

Pour exécuter le script en pearl il faut installer perl et les modules de perl suivant :
 
 => xmltv
 
 => Term::ReadKey
 
 => JSON
 
 => Date::Parse
 
 => LWP::Protocol::https
