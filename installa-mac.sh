#!/bin/bash
# CamMixer - programma ponte per macOS (webcam per Teams, Zoom... tramite OBS)
#
# Installazione (nel Terminale):
#   curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
# oppure, dalla cartella dello zip scaricato:  bash installa-mac.sh
# Disinstallazione:  bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi
#
# Non servono permessi di amministratore: il programma va in ~/Library/Application Support/CamMixer,
# parte a ogni accesso (LaunchAgent) e si aggiorna da solo dal repository pubblico dei rilasci.
set -euo pipefail
CARTELLA="$HOME/Library/Application Support/CamMixer"
ETICHETTA="it.cammixer.ponte"
AGENTE="$HOME/Library/LaunchAgents/$ETICHETTA.plist"
DOMINIO="gui/$(id -u)"
MANIFESTO="https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/aggiornamenti.json"
PREFISSO="https://github.com/BBerry2020/cammixer-releases/releases/download/"

if [ "${1:-}" = "--rimuovi" ]; then
  launchctl bootout "$DOMINIO/$ETICHETTA" 2>/dev/null || true
  rm -f "$AGENTE"
  rm -rf "$CARTELLA"
  echo "CamMixer per macOS disinstallata."
  exit 0
fi

if [ "$(uname -s)" != "Darwin" ]; then echo "Questo script è per macOS."; exit 1; fi
mkdir -p "$CARTELLA" "$HOME/Library/LaunchAgents"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# 1. programma: accanto allo script (zip scaricato) oppure l'ultima versione pubblicata
QUI=""
if [ -n "${BASH_SOURCE[0]:-}" ] && [ -f "${BASH_SOURCE[0]}" ]; then QUI="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"; fi
if [ -n "$QUI" ] && [ -f "$QUI/cammixer-ponte" ] && [ "$QUI" != "$CARTELLA" ]; then
  SORGENTE="$QUI"
else
  echo "Scarico l'ultima versione..."
  curl -fsSL "$MANIFESTO" -o "$TMP/aggiornamenti.json"
  URL="$(plutil -extract macos.url raw -o - "$TMP/aggiornamenti.json")"
  IMPRONTA="$(plutil -extract macos.sha256 raw -o - "$TMP/aggiornamenti.json")"
  case "$URL" in "$PREFISSO"*) ;; *) echo "Indirizzo di scaricamento non valido: $URL"; exit 1 ;; esac
  curl -fsSL "$URL" -o "$TMP/ponte.zip"
  if [ "$(shasum -a 256 "$TMP/ponte.zip" | cut -d' ' -f1)" != "$IMPRONTA" ]; then echo "File scaricato non valido (impronta diversa)."; exit 1; fi
  ditto -x -k "$TMP/ponte.zip" "$TMP/x"
  SORGENTE="$TMP/x"
fi

launchctl bootout "$DOMINIO/$ETICHETTA" 2>/dev/null || true
install -m 755 "$SORGENTE/cammixer-ponte" "$CARTELLA/cammixer-ponte"
if [ -f "$SORGENTE/installa-mac.sh" ]; then install -m 755 "$SORGENTE/installa-mac.sh" "$CARTELLA/installa-mac.sh"; fi
xattr -cr "$CARTELLA" 2>/dev/null || true   # toglie il contrassegno "scaricato da Internet"
VERSIONE="$("$CARTELLA/cammixer-ponte" --versione)"
INDIRIZZO="$("$CARTELLA/cammixer-ponte" --indirizzo-obs)"   # crea anche la chiave del flusso

# 2. avvio a ogni accesso; launchd lo riavvia dopo un aggiornamento o un errore
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

CamMixer per macOS $VERSIONE installata e avviata.

Ultimi passi (una volta sola), con OBS Studio (gratuito: https://obsproject.com):
  1. In OBS, sotto "Sorgenti" premi +, scegli "Browser" e incolla questo URL (è già negli appunti):
       $INDIRIZZO
     Larghezza 1280, altezza 720. Ingrandisci la sorgente a tutto schermo (tasto destro > Trasforma > Adatta allo schermo).
  2. Premi "Avvia fotocamera virtuale" (la prima volta macOS chiede di consentire l'estensione di sistema di OBS).
  3. In Teams: Impostazioni > Dispositivi > Fotocamera > "OBS Virtual Camera".
Il video arriva dall'estensione CamMixer di Microsoft Edge (o Chrome): tienilo aperto.
L'URL contiene una chiave privata: non condividerlo.
TESTO
