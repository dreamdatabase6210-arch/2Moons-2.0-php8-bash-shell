## 🛠️ Script `gg.sh` — Installation automatisée de 2Moons PHP 8.1

Le script `gg.sh` est un outil shell conçu pour automatiser l’installation et la configuration du projet **2Moons 2.0 compatible PHP 8.1** dans un environnement local basé sur **XAMPP**.

### 🚀 Fonctionnalités principales

- 📦 **Clonage du dépôt** dans le dossier `/opt/lampp/htdocs/glitch-uv`
- 🔧 **Configuration des permissions** pour Apache (daemon)
- 🧪 **Vérification de l’environnement PHP**
- 📄 **Création automatique du fichier `.env`**
- 💾 **Préparation de la base de données** (optionnelle)
- 🔁 **Redémarrage de XAMPP**
- 🌐 **Ouverture automatique du site** dans le navigateur

### 📍 Chemin d’installation

Le projet est installé dans :

/opt/lampp/htdocs/glitch-uv

### ✅ Compatibilité

- PHP ≥ 8.1.0
- XAMPP Linux
- MariaDB / MySQL ≥ 10.4

### 📦 Dépendances

- `git`
- `php`
- `mysql` ou `mariadb`
- `xdg-open` (pour lancer le navigateur)

### 📌 Exemple d’utilisation

```bash
chmod +x gg.sh
./gg.sh


## _v2.0.0  Jekill 04.10.2023_

[Updates]
 - Compatibility with PHP 8 or higher.
 - Update of the Smarty library to version 4.3.4.
 - Correction of unsupported functions in PHP 8.
 - Implementation of missing logic in different files of 2Moons.

## _v2.0.0	Danter14 17.02.2018_
[Modules] :
- Percentage with bar and text for real-time resources
- Number of players connect
- Planet change with arrows

[Bugs] :
- Fix of the language buddyList
- Fix bug for debris fields on the moon that replace the fields already in place by byazrail
- Fix bug, with destroyed moon by Kaizoku

[Improvements] :
- Ability to make high speed server

[Optimization] :
- Switching to php version 7.2

[Design] :
- Redesign of the bootstrap 4 login page
- Redesign Ingame by Danter14

[Panel administration] :
- none

## Developer
+ Project Leader
  - Danter14 (Hike)
