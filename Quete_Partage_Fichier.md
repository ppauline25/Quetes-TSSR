### Installation du role Serveurs de Fichiers 

1. Ouvrir Server Manager
2. Cliquer sur Gérer, puis sur Ajouter des rôles et fonctionnalités.
3. Choisir Installation basée sur un rôle ou une fonctionnalité.
4. Sélectionner le serveur local
5. Cocher Serveur de fichiers (File Server) sous le rôle Services de fichiers et de stockage.
6. Suivant, puis Installer

### Creation d'un dossier + configuration partage 

1. Aller créer un dossier à la racine de  C:\  qui s'appelle "Documents_Entreprise) 
2. Clique droit sur le dossier -> sharing -> Advance Sharing -> cocher Share this folder.
Nomer le nom du partage : Docs 
3. Créer 3 sous-dossiers : RH, Comptabilité et Direction 
4. Ouvrir "Active Directory Users and Computers" 
Au niveau du serveur, clique droit : New -> Group. Nommer le groupe à créer et cocher Global et Security 

### Configuration permissions NTFS et de partage 
1. Clique droit sur "Documents_Entreprise" -> Proprieties -> Sharing -> Share. Ajouter le groupe Direction, et modifier les permissions en "Read/Write" 
2. Entrer dans Documents_Entreprise
Clique droit sur "RH" -> Proprieties -> Sharing -> Share. Ajouter le groupe RH, et modifier les permissions en "Read" 
Clique droit sur "Comptabilité" -> Proprieties -> Sharing -> Share. Ajouter le groupe Comptabilité, et modifier les permissions en "Read" 
3. Vérifier la liste des dossiers partagé avec la commande ``` Powershell Get-SmbShare``` 

### Configuration d'un lecteur réseau pointant vers ce partage via PowerShell, sur le poste client Windows 10
1. Depuis un compte utilisateur, par exemple User 1 
Ouvrir Powershell (pas en administrateur) 
``` Powershell
New-PSDrive -Name "Z" -PSProvider "FileSystem" -Root "\\WILDER\Documents_Entreprise" -Persist
```
2. Vérifier la création avec 
``` Powershell
Get-PSDrive
```
3. Ouvrir un explorateur de fichier, et aller vérifier que le disque soit bien monté 

### Tester l'accès depuis le poste client avec différents comptes utilisateurs
1. Si besoin, créer les nouveaux utilisateurs en Ouvrant Active Directory Users and Computers -> New -> User

2. Ouvrir la session d'un nouvel utilisateur, et vérifier dans l'explorateur de fichier.  

