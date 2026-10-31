# CamMixer · rilasci

Installer di **CamMixer**: le webcam virtuali con effetti, sfondi e sottopancia create dall'estensione per Microsoft Edge e Chrome, usabili anche in **Microsoft Teams per desktop**, Zoom e nelle altre app del computer.

Qui ci sono solo i file compilati (su GitHub Actions); il codice sorgente è in un repository privato.

## Scaricamento diretto (versione 1.1.1)

- Windows 11: [CamMixer-Setup-1.1.1.exe](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-Setup-1.1.1.exe)
- macOS: [CamMixer-macOS-1.1.1.zip](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-macOS-1.1.1.zip)

Le impronte SHA-256 sono in [`aggiornamenti.json`](aggiornamenti.json). Dalle prossime versioni i file arrivano anche nella pagina [Releases](https://github.com/BBerry2020/cammixer-releases/releases).

## Windows 11

1. Scarica **CamMixer-Setup-*versione*.exe** (qui sopra o dall'[ultimo rilascio](https://github.com/BBerry2020/cammixer-releases/releases/latest)) e avvialo. Contiene anche l'estensione per Edge/Chrome e la tiene aggiornata; la prima volta va caricata in Edge (si apre una guida). L'installer non è firmato: se compare «Windows ha protetto il PC», scegli *Ulteriori informazioni › Esegui comunque*.
2. In Teams: *Impostazioni › Dispositivi › Fotocamera › **CamMixer***.
3. Nelle impostazioni dell'estensione, riquadro *Webcam per Teams, Zoom e le altre app*, scegli quale webcam virtuale inviare. Microsoft Edge deve restare aperto.

Quando esce una versione nuova, l'estensione mostra *Installa l'aggiornamento*: un clic, e Windows chiede il permesso di amministratore.

## macOS (con OBS Studio)

Su macOS una webcam di sistema deve essere firmata da Apple; CamMixer usa quindi la fotocamera virtuale di [OBS Studio](https://obsproject.com).

```sh
curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
```

Lo script installa il programma ponte per l'utente (senza amministratore), lo avvia a ogni accesso e copia negli appunti l'indirizzo da usare in OBS come sorgente **Browser** (1280×720). Poi in OBS *Avvia fotocamera virtuale* e in Teams scegli **OBS Virtual Camera**. Il programma si aggiorna da solo.

Disinstallazione: `bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi`

## Aggiornamenti

[`aggiornamenti.json`](aggiornamenti.json) indica l'ultima versione con l'indirizzo e l'impronta SHA-256 di ogni file. I programmi lo controllano ogni 6 ore e scaricano solo file di questi rilasci con l'impronta giusta.
