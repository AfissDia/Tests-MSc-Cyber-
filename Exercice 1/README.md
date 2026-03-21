# Tests-MSc-Cyber-

# Exercice 01 - Packet Tracer

## Objectif
- la segmentation du trafic avec des VLAN
- le routage inter-VLAN
- l’attribution automatique des adresses IP via DHCP
- la communication entre les différents équipements

## Topologie
L’architecture est composée de :
- 1 routeur Cisco 1941
- 3 switches Cisco 2960
- 3 points d’accès Wi-Fi
- 3 PC portables
- 6 PC fixes
- 3 téléphones IP

Chaque switch représente un bureau.

## Répartition des VLAN
- VLAN 1 : VoIP
- VLAN 10 : Wi-Fi
- VLAN 20 : PC fixes
- VLAN 30 : Administration

## Affectation des ports sur les switches
- Fa0/2-3 : Téléphones IP (VLAN 1)
- Fa0/4-5 : Points d’accès Wi-Fi (VLAN 10)
- Fa0/6-7 : PC fixes (VLAN 20)
- Fa0/8 : Administration (VLAN 30)
- Fa0/1 et Fa0/9 : liens trunk

## Fonctionnement du réseau
Le routeur a été configuré en mode router-on-a-stick avec une sous-interface par VLAN.  
Il assure également le rôle de serveur DHCP pour distribuer automatiquement les adresses IP aux équipements.

## Vérifications réalisées
Les tests suivants ont été réalisés :
- vérification des VLAN sur les switches
- vérification des liens trunk
- attribution DHCP des adresses IP
- test de connectivité avec ping entre les VLAN
- vérification de la passerelle par défaut sur les postes

## Contenu du dépôt
- le fichier Packet Tracer
- les configurations des équipements
- les captures d’écran
- le rapport PDF final

## Auteur
Mouhamadou Afiss DIA