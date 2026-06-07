#!/bin/bash
# Script d'initialisation Git — L&P Horizon
# À exécuter UNE SEULE FOIS dans le Terminal

set -e

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PROJECT_DIR"

echo "📁 Dossier : $PROJECT_DIR"

# 1. Nettoyer un éventuel dépôt partiel
if [ -d ".git" ]; then
  echo "🧹 Suppression du dépôt Git existant (incomplet)…"
  rm -rf .git
fi

# 2. Initialiser
echo "🔧 Initialisation du dépôt Git…"
git init -b main

# 3. Config locale (modifie si besoin)
git config user.name "L&P Horizon"
git config user.email "cyprien.lanlo@lphorizon.fr"

# 4. Premier commit
echo "📦 Ajout des fichiers…"
git add .
git commit -m "feat: premier jet site L&P Horizon — modélisation 3D"

echo ""
echo "✅ Dépôt Git initialisé et commit effectué !"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ÉTAPE SUIVANTE :"
echo "  1. Va sur https://github.com/new"
echo "  2. Crée un repo nommé : lp-horizon"
echo "     → Visibilité : Public ou Private selon toi"
echo "     → NE PAS cocher 'Add a README'"
echo "  3. Copie l'URL SSH ou HTTPS du repo créé"
echo "  4. Reviens ici et lance :"
echo ""
echo "     git remote add origin <URL_DU_REPO>"
echo "     git push -u origin main"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
