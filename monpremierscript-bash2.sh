#!/bin/bash

echo "Quel dossier souhaitez-vous sauvegarder?" 

read DIRECTORY 

  if [ -e "$DIRECTORY"]; 
  
  then
 
    echo "Dans quel repertoire shouaitez vous sauvegarder le dossier"?
    read $nouveaudossier
    mkdir $nouveaudossier
    echo "Votre dossier $nouveaudossier a correctement été sauvegardé."
    echo "Souhaitez vous sauvegarder un nouveau dossier ?"
      

  else 
    echo "Erreur : Le dossier n'existe pas."

  fi 