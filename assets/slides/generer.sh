#!/usr/bin/env bash
# Régénère les images des diagrammes affichés dans slides.md.
#
#     assets/slides/generer.sh
#
# Marp n'affiche pas les blocs mermaid : les diapositives montrent une image
# PNG de chaque diagramme. La source reste le chapitre. Tout bloc mermaid d'un
# chapitre qui contient une ligne « %% slide: <nom> » est rendu dans
# assets/slides/<nom>.png ; mermaid ignore cette ligne, qui est un commentaire.
#
# Après avoir modifié l'un de ces diagrammes, relancer le script et commiter
# les images. Fond blanc : l'image reste lisible sur les diapositives sombres
# comme sur la version white.
#
# Prérequis : Node.js et Chrome. Si Puppeteer ne trouve pas le Chrome du
# système, le désigner avec PUPPETEER_EXECUTABLE_PATH, par exemple :
#
#     PUPPETEER_EXECUTABLE_PATH="/c/Program Files/Google/Chrome/Application/chrome.exe" assets/slides/generer.sh

set -euo pipefail

# Même version que le workflow Documents, qui rend les diagrammes du support.
MERMAID_CLI_VERSION=11.17.0

cd "$(dirname "$0")/../.."
SORTIE=assets/slides
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
export PUPPETEER_SKIP_DOWNLOAD=1

# Un fichier .mmd par bloc marqué.
awk -v dossier="$TMP" '
  /^```mermaid/          { dans = 1; bloc = ""; nom = ""; next }
  dans && /^```/         { if (nom != "") { f = dossier "/" nom ".mmd"; printf "%s", bloc > f; close(f) }
                           dans = 0; next }
  dans                   { bloc = bloc $0 "\n"
                           if (match($0, /%% slide: [A-Za-z0-9_-]+/)) nom = substr($0, RSTART + 10, RLENGTH - 10) }
' [0-9]*.md

# Taille naturelle, comme dans le support : sans cela, mermaid étire chaque
# diagramme sur toute la largeur disponible.
cat > "$TMP/config.json" <<'JSON'
{
  "flowchart": { "useMaxWidth": false },
  "sequence": { "useMaxWidth": false },
  "class": { "useMaxWidth": false },
  "block": { "useMaxWidth": false },
  "mindmap": { "useMaxWidth": false }
}
JSON

for source in "$TMP"/*.mmd; do
  nom=$(basename "$source" .mmd)
  echo "$SORTIE/$nom.png"
  npx --yes "@mermaid-js/mermaid-cli@${MERMAID_CLI_VERSION}" \
    --configFile "$TMP/config.json" \
    --backgroundColor white \
    --scale 2 \
    --input "$source" \
    --output "$SORTIE/$nom.png" \
    --quiet
done
