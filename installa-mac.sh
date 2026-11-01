#!/bin/bash
# CamMixer - bridge program for macOS (webcam for Teams, Zoom... through OBS)
#
# Installation (in Terminal):
#   curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
# or, from the folder of the downloaded zip:  bash installa-mac.sh
# Uninstall:  bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi
#
# No administrator rights needed: the program goes to ~/Library/Application Support/CamMixer,
# starts at every sign-in (LaunchAgent) and updates itself from the public releases repository.
set -euo pipefail
CARTELLA="$HOME/Library/Application Support/CamMixer"
ETICHETTA="it.cammixer.ponte"
AGENTE="$HOME/Library/LaunchAgents/$ETICHETTA.plist"
DOMINIO="gui/$(id -u)"
MANIFESTO="https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/aggiornamenti.json"
PREFISSO="https://github.com/BBerry2020/cammixer-releases/releases/download/"
PREFISSO_GIT="https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/"

if [ "${1:-}" = "--rimuovi" ]; then
  launchctl bootout "$DOMINIO/$ETICHETTA" 2>/dev/null || true
  rm -f "$AGENTE"
  rm -rf "$CARTELLA"
  echo "CamMixer for macOS uninstalled."
  exit 0
fi

if [ "$(uname -s)" != "Darwin" ]; then echo "This script is for macOS."; exit 1; fi
mkdir -p "$CARTELLA" "$HOME/Library/LaunchAgents"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# 1. program: next to the script (downloaded zip) or the latest published version
QUI=""
if [ -n "${BASH_SOURCE[0]:-}" ] && [ -f "${BASH_SOURCE[0]}" ]; then QUI="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"; fi
if [ -n "$QUI" ] && [ -f "$QUI/cammixer-ponte" ] && [ "$QUI" != "$CARTELLA" ]; then
  SORGENTE="$QUI"
else
  echo "Downloading the latest version..."
  curl -fsSL "$MANIFESTO" -o "$TMP/aggiornamenti.json"
  URL="$(plutil -extract macos.url raw -o - "$TMP/aggiornamenti.json")"
  IMPRONTA="$(plutil -extract macos.sha256 raw -o - "$TMP/aggiornamenti.json")"
  case "$URL" in "$PREFISSO"* | "$PREFISSO_GIT"*) ;; *) echo "Download address not valid: $URL"; exit 1 ;; esac
  curl -fsSL "$URL" -o "$TMP/ponte.zip"
  if [ "$(shasum -a 256 "$TMP/ponte.zip" | cut -d' ' -f1)" != "$IMPRONTA" ]; then echo "Downloaded file not valid (different hash)."; exit 1; fi
  ditto -x -k "$TMP/ponte.zip" "$TMP/x"
  SORGENTE="$TMP/x"
fi

launchctl bootout "$DOMINIO/$ETICHETTA" 2>/dev/null || true
install -m 755 "$SORGENTE/cammixer-ponte" "$CARTELLA/cammixer-ponte"
if [ -f "$SORGENTE/installa-mac.sh" ]; then install -m 755 "$SORGENTE/installa-mac.sh" "$CARTELLA/installa-mac.sh"; fi
xattr -cr "$CARTELLA" 2>/dev/null || true   # removes the "downloaded from the Internet" mark
VERSIONE="$("$CARTELLA/cammixer-ponte" --versione)"
INDIRIZZO="$("$CARTELLA/cammixer-ponte" --indirizzo-obs)"   # also creates the stream key

# 2. start at every sign-in; launchd restarts it after an update or an error
cat > "$AGENTE" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>$ETICHETTA</string>
  <key>ProgramArguments</key><array><string>$CARTELLA/cammixer-ponte</string></array>
  <key>RunAtLoad</key><true/>
  <key>KeepAlive</key><dict><key>SuccessfulExit</key><false/></dict>
  <key>ProcessType</key><string>Interactive</string>
  <key>StandardErrorPath</key><string>$CARTELLA/errori.log</string>
</dict>
</plist>
PLIST
launchctl bootstrap "$DOMINIO" "$AGENTE"
launchctl kickstart -k "$DOMINIO/$ETICHETTA" >/dev/null 2>&1 || true
sleep 1
printf '%s' "$INDIRIZZO" | pbcopy 2>/dev/null || true

cat <<TESTO

CamMixer for macOS $VERSIONE installed and running.

Last steps (only once), with OBS Studio (free: https://obsproject.com):
  1. In OBS, under "Sources" press +, choose "Browser" and paste this URL (it is already in the clipboard):
       $INDIRIZZO
     Width 1280, height 720. Stretch the source to the whole screen (right click > Transform > Fit to screen).
  2. Press "Start Virtual Camera" (the first time macOS asks you to allow the OBS system extension).
  3. In Teams: Settings > Devices > Camera > "OBS Virtual Camera".
The video comes from the CamMixer extension for Microsoft Edge (or Chrome): keep it open.
The URL contains a private key: do not share it.
TESTO
