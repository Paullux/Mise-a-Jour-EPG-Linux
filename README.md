# Mise-a-Jour-EPG-Linux

J'utilise Kodi, avec l'Add-On "PVR simple iptv" pour regarder la tv sur mon PC sous Linux.

zubrick propose sur son github (https://github.com/zubrick/tv_grab_fr_telerama) un script perl qui permet de récupérer un EPG gratuit pour la France.
J'ai réutulisé son travail pour mettre à jour l'EPG sur mon PC automatiquement sans avoir à trop à intervenir.

commande à effectuer en tant qu'utilisateur courant :

chmod +x install.sh	

./install.sh

Si vous voulez automatiser au maximum la mise à jour l'EPG, penser à ajouter la mise à jour de l'EPG au programme au démarrage.
Le temps de compilation de la liste xmltv étant assez long (une 20aine de minute pour moi) il faut plutôt essayer de n'exécuter l'ensemble du programme qu'un fois par jour ou moins.
