<h1>📋 Contexte du projet</h1>
Création d'un site web de gestion d'entreprises et de salariés

<h1>🎯 Objectifs pédagogiques</h1>

- Découvrir les fonctionnalités de Symfony

<h1>📝 Consignes</h1>

- TWIG : Utiliser TWIG pour la gestion des templates et le rendu des vues
- Bootstrap : Intégrer Bootstrap pour le design et le style des pages
- Créer des Entités/Propriétés avec Symfony
- Configurer les relations entre entités : Définir les relations comme ManyToOne, OneToMany, etc
- Créer la base de données et effectuer une migration
- Créer les contrôleurs
- Utiliser des requêtes préparées avec persist et flush
- Mettre en place le CRUD

<h1>🔧 Technologies utilisées</h1>

<h2>Languages</h2>

- HTML5
- CSS3
- PHP 8
- DQL

<h2>Outils</h2>

- VSCode
- Laragon
- Symfony

<h1>💡 Concepts clés abordés</h1>

HTML/CSS -> Twig/Bootstrap
- Sémantique HTML5
- Sémantique Twig
- Sémantique Bootstrap
- Variables CSS

PHP
- PDO et requêtes préparées
- Architecture MVC

SQL
- CRUD
- Clés primaires
- Clés étrangères

<h1>📦 Installation et configuration</h1>

<h2>Configuration de la base de données</h2>

- Cloner le repository
- Démarrer Laragon
- Accéder à HeidiSQL
- Charger le fichier SQL script_symfony.sql
- Démarrer Symfony
- Lancer le serveur (symfony serve -d)
- Mettre à jour la base de données (symfony console doctrine:schema:update --force)

<h2>Configuration du projet</h2>

Modifier les informations de connexion dans .env

DATABASE_URL="mysql://root@127.0.0.1:3306/symfonyentreprisedemo"

Remplacez root par votre nom d'utilisateur MySQL.
 : (après l'utilisateur)
et ajoutez votre mot de passe si vous en avez un
