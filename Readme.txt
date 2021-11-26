le librairie que vous devriez avoir:
-itext 
-jfoenix 8.0.10
-mysql connector 8 ou 5 solen la version de mysql que vous utiliser

NB: Pour la génération des factures utilise un Syteme d'exploitation WINDOWS

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

-la ligne 1621 doit etre identique a celle que vous mettrez a la ligne 1580 et 1577
cette ligne indique a votre pc ou il doit aller pour ouvrir automatiquement le fichier pdf imediatement apres generation

-faites de meme a partir de la colonne 96 de la ligne 1623 

-touts vos efforts sont recompenses profitez de ce projet

bon voila!
pour toutes questions vien vouloir ecire a l'adresse mail valdesguefa@gmail.com
 

maintenant que nous savons comment faire pour lancer notre projet qu'en est il réellement
ce projet permet la gestion des Chambres, des clients et des réceptionnistes d'un hotel et pour cela dans cette application nous avons 2 Vues a savoir :
- la Vue de l'administrateur : de cette vue il peut voir toutes les informations sur les chambres de l'hotel tels que :celles qui sont les plus sollicités, le prix de chaque chambre, le numero de telephone de la chambre , le prix de chacune des chambres , savoir si une chambre est occupe ou pas. deplus il a acces aux differentes informations des clients de l'hotel (ceux ayant termine leur sejour et ceux present dans l'hotel) a savoir : le nom, l'adresse, le numero de telephone, l'adresse mail de chaque client, savoir le client a paye en cash ou par carte. également il peut etablir les plannings de chacune des réceptionnistes et en supprimer .bref cette dispose de bon nombre de fonctionnalités ^0^
- la vue la réceptionniste : elle prend les reservations des clients lors d'une reservation plusieurs contraintes sont a prendre en compte a savoir : la date sur laquelle va s'etendre la reservation (l'application n'offrira que des chambres non occupe pendant cette duree de reserveation) le nombre de personne devant entré en possesion de la chambre (l'aopplication tient compte de cela), le type de lits et de chambres.également une fois la réceptionniste connecte l'application lui informera (la receptionniste) des clients ayant terminée leurs séjours, l'application offre un systeme de generation de facteur .bref cette dispose de bon nombre de fonctionnalités ^0^
 
