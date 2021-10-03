le librairie que vous devriez avoir:
-itext 
-jfoenix 8.0.10
-mysql connector 8 ou 5 solen la version de mysql que vous utiliser

pour utiliser convenablemet ce logiciel veuillez
1) renseigner dans la classe 'ConnectionProvider'(elle se trouve dans le fichier
 java 'ConnectionProvider.java'du dossier 'utilitiesPac' du projet) a 
la ligne 9 votre login et la ligne 10 votre password 
d'access a la base de donnee
NB:si vous utilisez MySql 5 veuillez egalement changer le driver a la ligne 12 et l'url 
d'acces a la base de donnees a la ligne 8

2)ensuite dans le fichier java 'ReceptionistController.java' du dossier 'controllerpac':
-a la ligne 1577 vous pouvez changer le chemin qui y est indique il indique par
ailleur l'emplacement dans lequel seront stocke les fichiers pdf des factures qui seront generes

-la ligne 1580 indique l'emplacement du logo qui sera au dessus de la facture donc il faudra 
aller dans le dossier 'imagePac' du projet et rechercher 'image_logo_hotel.PNG' une fois fais copie 
le chemin absolue de votre 'image_logo_hotel.PNG' et mettez le a cette ligne biensur dans les ""

-la ligne 1621 doit etre identique a celle que vous mettrez a la ligne 1580 
cette ligne indique a votre pc ou il doit aller pour ouvrir automatiquement le fichier pdf imediatement apres generation

-faites de meme a partir de la colonne 96 de la ligne 1623 

-touts vos efforts sont recompenses profitez de ce projet

bon voila!
pour toutes questions vien vouloir ecire a l'adresse mail valdesguefa@gmail.com
 