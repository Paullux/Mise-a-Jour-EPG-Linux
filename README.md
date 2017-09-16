# Mise-a-Jour-EPG-Linux

J'utilise Kodi, avec l'Add-On "PVR simple iptv" pour regarder la tv sur mon PC sous Linux.

Zubrick propose sur son github (https://github.com/zubrick/tv_grab_fr_telerama) un script perl qui permet de récupérer un EPG gratuit pour la France.
J'ai réutilisé son travail pour mettre à jour l'EPG sur mon PC automatiquement sans avoir à trop à intervenir.

Pour cela il faut utiliser les commandes suivantes en tant qu'utilisateur courant (pas besoin d'être root ou d'utiliser sudo) :  
chmod +x install.sh	  
./install.sh

Lors du lancement du script d'installation, vous pouvez éditer la config de l'EPG, si vous choisissez de ne pas éditer la liste des chaînes vous laisserez alors celle que j'ai choisi pour moi.

Pour automatiser au maximum la mise à jour de l'EPG, j'ai ajouté mon script de mise à jour de l'EPG dans crontab  
(pour editer la fréquence de mise à jour ou pour désinstaller utilisez la commande "crontab -e" (n'oubliez pas de retirer la ligne qui lance le script de mise à jour lors de la désinstallation)).

Dans le menu de configuration l'extension de Kodi "PVR Simple IPTV" :  

=> Si vous êtes chez Free, vous pouvez choisir playlist local et choisir le fichier m3u placer dans "Documents/MiseAJourEPG/" (si vous avez exécuté install.sh) (j'ai édité le fichier http://mafreebox.freebox.fr/freeboxtv/playlist.m3u pour n'avoir que les chaînes que je regarde, dans les autres cas il vous faudra éditer votre propre fichier m3u).   
 => Ensuite choisir xml local et le fichier xml (généré par lors de l'exécution de install.sh) qui se situe dans "Documents/MiseAJourEPG/".   
 => Et finalement, pour les logos : choisir Chemin d'accès distant (adresse internet) et dans Options des logos XMLTV choisir "Logos des chaines à partir du XMLTV" : "Préférer XMLTV".

Normalement là vous avez accès à la tv sur Kodi.

Après vous pourrez voir dans votre menu, deux nouvelles applications : "Mise à Jour EPG" et "Config EPG", la première pour repeupler le fichier xml et la seconde pour choisir pour quelles chaînes vous désirez avoir le programme dans le fichier xml. 


Pour l'éditer le fichier m3u par exemple http://mafreebox.freebox.fr/freeboxtv/playlist.m3u, si vous êtes chez Free, il faut par exemple pour TF1 :  
Modifier la ligne juste au dessus du lien vers l'adresse du flux vidéo :

C'est à dire ajouter le numéro de la chaine qui existe dans le fichier tv_grab_fr_telerama.conf, en ajoutant un "C" en premier puis ".api.telerama.fr" ce qui donne tvg-id="C192.api.telerama.fr"  
J'ai remplacer le nom de la chaîne "1 - TF1 (TNT)" par "TF1" mais ça ça dépend de vos choix.  
et après vous pouvez remplacer dans le lien 192.168.0.22 (ip local de la freebox-player) par Freebox-Player.local (pour les chaînes TNT, pour les autres chaînes vous n'avez pas à besoin d'éditer l'url), voici ce que ça donne :

Avant :  
#EXTINF:0,1 - TF1 (TNT)  
rtsp://192.168.0.22/fbxdvb/stream?tsid=6&nid=8442&sid=1537&frontend=1

Après :  
#EXTINF:0 tvg-id="C192.api.telerama.fr",TF1  
rtsp://Freebox-Player.local/fbxdvb/stream?tsid=6&nid=8442&sid=1537&frontend=1
  
Si vous êtes chez un autre opérateur ou si vous connaissez d'autre flux vidéos il suffit de remplacer les flux par les votres.

Pour exécuter le script en pearl il faut installer perl et les modules de perl suivant :   
 => xmltv   
 => Term::ReadKey   
 => JSON   
 => Date::Parse   
 => LWP::Protocol::https  
 => Digest::HMAC  
 
pour ArchLinux ça donne :   
yaourt -S perl xmltv perl-term-readkey perl-json pearl-datetime-format-strptime perl-lwp-protocol-https perl-digest-hmac


Si jamais certaines chaines ne sont pas chargées (en particuliers les chaines des groupes TF1 et M6), vérifiez si vous avez installer les chaines TNT sur le Freebox Player.
Sinon vérifiez aussi la connection entre le Freebox-Player et la Freebox-Server (notamment au niveau des freeplugs).
