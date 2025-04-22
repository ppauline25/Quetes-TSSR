# PROCEDURE : Créer une Unité d'Organisation "Wilders.students", un groupe d'utilisateurs "students" et un utilisateur "pprak" dans ce groupe.



## Étape 1 – Créer l’OU Wilders_students

- Ouvrir "Active Directory Users and Computers" depuis la barre de menu 
- Clic droit sur le nom de ton domaine (wilder.lan)
- Sélectionner New > Organizational Unit
- Ajouter le nom de l’OU "Wilders_students"


## Étape 2 – Créer le groupe Students
- Clic droit sur l’OU Wilders_students
- Sélectionner New > Group
Nom du groupe : Students
- Laisser 
Group scope : Global
Group type : Security


## Étape 3 – Créer un utilisateur dans cette OU
- Clic droit sur Wilders_students
- Choisis New > User
- Renseigner les champs :
First name : Prak
Last name : Pauline
User logon name : pprak
- Définir un mot de passe (ex: Azerty1*)


## Étape 4 – Ajouter l’utilisateur au groupe Students
- Clic droit sur l’utilisateur Pauline Prak
- Clique sur Properties
- Onglet Member Of → Add...
- Taper "Students" puis clique sur Check Names

