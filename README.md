## 🛠️ Script `gg.sh` — Installation et administration de glitch-uv (2Moons PHP 8.1)

Ce dépôt contient un script shell nommé `gg.sh` conçu pour automatiser l’installation d’un fork 2Moons compatible PHP 8.1 dans le dossier `/opt/lampp/htdocs/glitch-uv`.

### 🚀 Ce que fait le script

- 📦 Clone automatiquement un dépôt 2Moons compatible PHP 8.1 (ex: Dr-Jekill, yamelrh, SmartMoons)
- 🔧 Configure les permissions pour Apache (daemon)
- 📄 Génère un fichier `.env` ou `config.php` adapté à l’environnement
- 🧪 Prépare la base de données MySQL/MariaDB
- 🔁 Redémarre XAMPP pour appliquer les changements
- 🌐 Ouvre le site dans le navigateur local

### ✅ Compatibilité

- PHP 8.1.x (testé sur 8.1.25 et 8.1.32)
- XAMPP Linux
- MariaDB ≥ 10.4

---

## 📂 Structure du dépôt

- `gg.sh` : script principal d’installation
- `glitch-cron.sh` : script optionnel pour tâches automatiques (backup, cache, log)
- `README.md` : documentation du projet
- `config-exemples/` : exemples de fichiers `.env` ou `config.php` selon le fork

---

## 📌 Forks testés et compatibles

| Dépôt GitHub | Compatibilité | Notes |
|--------------|---------------|-------|
| [Dr-Jekill/2Moons-2.0-php8](https://github.com/Dr-Jekill/2Moons-2.0-php8) PHP8.2+ | ✅ PHP 8.1 | Nécessite patch sur `x.php` |
| [yamelrh/2moons](https://github.com/yamelrh/2moons/tree/php-8.1) | ✅ PHP 8.1 | Stable, simple |
| [magic-space/space-tactics-php8](https://github.com/magic-space/space-tactics-php8) | ✅ PHP 8.1+ | Symfony, Twig, moderne |

---

## 🧩 Sections du projet

- `[Updates]` : suivi des versions et correctifs
- `[Modules]` : extensions et fonctionnalités ajoutées
- `[Bugs]` : erreurs connues (ex: array offset on bool)
- `[Improvements]` : refactorisation, sécurité, traduction
- `[Optimization]` : cache, requêtes SQL, assets
- `[Design]` : refonte visuelle, responsive
- `## Developer` : guide pour contributeurs, structure du code, scripts shell

---

Ce dépôt est destiné aux développeurs passionnés par les jeux spatiaux PHP, souhaitant administrer ou moderniser un serveur 2Moons en local ou en production.

