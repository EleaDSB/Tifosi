Projet Base de Données Tifosi 🍕

Ce dépôt contient les fichiers nécessaires à la mise en place de la base de données pour le restaurant de street-food italien Tifosi.

📋 Structure du projet
Conformément aux consignes du devoir, vous trouverez ici : 
- tifosi_structure.sql : Le script de création des tables et des relations.
- tifosi_data.sql : Le script d'insertion des données de test (focaccias, ingrédients, boissons, marques).
- backup_tifosi.sql : La sauvegarde complète de la base de données (structure + données).


🛠️ Instructions d'installation

1. Prérequis
- Un serveur MySQL local (via WAMP, MAMP, XAMPP ou Docker).
- Un accès à phpMyAdmin.

2. Création de l'utilisateur Administrateur
Avant d'importer la base, vous devez créer l'utilisateur tifosi :

  CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'votre_mot_de_passe';
  GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
  FLUSH PRIVILEGES;
  
3. Importation de la base
- Connectez-vous à phpMyAdmin avec l'utilisateur tifosi.
- Créez la base de données nommée tifosi.
- Sélectionnez la base et utilisez l'onglet Importer pour charger le fichier backup_tifosi.sql.


📐 Modèle Physique de Données (MPD)

La base respecte le schéma relationnel fourni, incluant :
- Tables principales : client, focaccia, ingredient, boisson, marque, menu .
- Tables de liaison : achete, paye, comprend, contient, est_constitue.
- Contraintes : Tous les champs obligatoires sont sécurisés via des clauses NOT NULL.
