#!/bin/bash

#Demander à l'utilisateur le nom de son nouveau projet 
echo "Quel est le nom de votre projet?"
read nom_projet

#Création des dossiers PROJETS et $1
mkdir -p /home/pauline/Bureau/PROJETS/$nom_projet

#Aller dans le dernier répertoire créee
cd /home/pauline/Bureau/PROJETS/$nom_projet

#Création fichier $1.md
touch $nom_projet.md

#Création fichier $1.sh 
touch $nom_projet.sh

#Ajout du shebang dans $1.sh 
echo "#!/bin/bash" >> /home/pauline/Bureau/PROJETS/$nom_projet/$nom_projet.sh

#Ajout titre projet dans $1.md
echo "#$nom_projet"  >>/home/pauline/Bureau/PROJETS/$nom_projet/$nom_projet.md

#modification des droits d'exécution
chmod 1 /home/pauline/Bureau/PROJETS/$nom_projet/$nom_projet.sh 