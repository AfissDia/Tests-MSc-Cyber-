# Exercice 02 - Active Directory

## Objectif
Mettre en place un contrôleur de domaine Active Directory et d’automatiser la création des utilisateurs et des groupes via PowerShell.

## Environnement
- Windows Server 2019
- Active Directory Domain Services
- PowerShell
- VirtualBox

## Script PowerShell
Le script permet :
- de créer les utilisateurs à partir d’un fichier CSV
- de créer les groupes
- d’ajouter les utilisateurs dans leurs groupes
- de forcer le changement de mot de passe à la première connexion

## Fichier CSV
Le fichier CSV contient :
- Nom
- Prénom
- Groupes

## Résultat
Après exécution du script, tous les utilisateurs et groupes ont été créés automatiquement dans Active Directory.

## Auteur
Mouhamadou Afiss DIA