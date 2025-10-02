#!/bin/bash

echo "🚀 Installation de 2Moons 2.0 (Dr-Jekill, PHP 8.1) dans /opt/lampp/htdocs/glitch-uv"

# 📦 Variables
REPO="https://github.com/Dr-Jekill/2Moons-2.0-php8.git"
TARGET="/opt/lampp/htdocs/glitch-uv"
DB_NAME="drjekill_uv"
DB_USER="root"
DB_PASS=""
DB_PORT="3307"
DB_HOST="127.0.0.1"

# 📁 Préparation du dossier
sudo mkdir -p "$TARGET"
sudo chown "$USER":"$USER" "$TARGET"

# 📦 Clonage du dépôt
git clone "$REPO" "$TARGET"

# 🔧 Permissions
sudo chown -R daemon:daemon "$TARGET"
sudo chmod -R 755 "$TARGET"

# 🧪 Base de données
echo "🧪 Création de la base $DB_NAME"
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -e "DROP DATABASE IF EXISTS \`$DB_NAME\`; CREATE DATABASE \`$DB_NAME\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" "$DB_NAME" < "$TARGET/install/install.sql"

# 📄 Fichier de configuration
CONFIG="$TARGET/includes/config.php"
if [ -f "$CONFIG" ]; then
  echo "🔧 Mise à jour du fichier config.php"
  sed -i "s/'DATABASE_NAME', '.*'/'DATABASE_NAME', '$DB_NAME'/g" "$CONFIG"
  sed -i "s/'DATABASE_HOST', '.*'/'DATABASE_HOST', '$DB_HOST:$DB_PORT'/g" "$CONFIG"
  sed -i "s/'DATABASE_USER', '.*'/'DATABASE_USER', '$DB_USER'/g" "$CONFIG"
  sed -i "s/'DATABASE_PASS', '.*'/'DATABASE_PASS', '$DB_PASS'/g" "$CONFIG"
fi

# 🔁 Redémarrage de XAMPP
sudo /opt/lampp/lampp restart

# 🌐 Lancement dans le navigateur
xdg-open "http://localhost/glitch-uv/" &>/dev/null

echo "✅ 2Moons Dr-Jekill installé avec succès sur PHP 8.1 Orion 🧬"
