#!/usr/bin/env bash
# Instalador de 1 Linha do SUPER-AGENTE (Linux / macOS / Git Bash)
set -e

REPO_URL="https://github.com/joaojvb/SUPER-AGENTE.git"
TARGET_DIR="${1:-.}"
TMP_DIR="$(mktemp -d)"

echo "[SUPER-AGENTE] Baixando matriz de 28 especialistas..."
git clone --depth 1 "$REPO_URL" "$TMP_DIR" >/dev/null 2>&1
rm -rf "$TMP_DIR/.git"
cp -R "$TMP_DIR/." "$TARGET_DIR/"
rm -rf "$TMP_DIR"

echo "[SUPER-AGENTE] Instalado com sucesso em: $TARGET_DIR"
echo "[SUPER-AGENTE] Abra seu editor de IA (Antigravity, Cursor, Claude Code, Windsurf) e mande sua ideia!"
