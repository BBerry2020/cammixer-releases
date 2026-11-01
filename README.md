# CamMixer · rilasci

Installer di **CamMixer**: le webcam virtuali con effetti, sfondi e sottopancia create dall'estensione per Microsoft Edge e Chrome, usabili anche in **Microsoft Teams per desktop**, Zoom e nelle altre app del computer.

**Tutti i rilasci di CamMixer sono qui**: installer per Windows, programma per macOS ed estensione per Edge e Chrome. Sono compilati su GitHub Actions e verificati con antivirus e sandbox prima della pubblicazione; il codice sorgente è in un repository privato.

## Scaricamento diretto (versione 1.2.0, estensione 1.6.0)

- Windows 11: [CamMixer-Setup-1.2.0.exe](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-Setup-1.2.0.exe)
- macOS: [CamMixer-macOS-1.2.0.zip](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-macOS-1.2.0.zip)
- Estensione per Edge e Chrome (serve solo senza l'installer per Windows): [CamMixer-estensione-1.6.0.zip](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-estensione-1.6.0.zip)

Impronte e note in [`verifiche/CamMixer-1.2.0.md`](verifiche/CamMixer-1.2.0.md). **Questa versione è stata pubblicata prima che la verifica antivirus fosse completata.** Risultato arrivato dopo: Microsoft Defender e ClamAV non trovano nulla; su VirusTotal 3 motori euristici su circa 70 segnalano l'installer (dettagli e link nelle note). Il programma per macOS e lo zip non hanno segnalazioni.

## Windows 11

1. Scarica **CamMixer-Setup-*versione*.exe** dal link qui sopra e avvialo. L'installer non è firmato: se compare «Windows ha protetto il PC», scegli *Ulteriori informazioni › Esegui comunque*.
2. In Teams: *Impostazioni › Dispositivi › Fotocamera › **CamMixer***.
3. Nelle impostazioni dell'estensione, riquadro *Webcam per Teams, Zoom e le altre app*, scegli quale webcam virtuale inviare. Microsoft Edge deve restare aperto.

Quando esce una versione nuova, le impostazioni dell'estensione mostrano *Apri la pagina dei rilasci*: scarica l'installer nuovo e avvialo. Il programma per Windows non scarica né installa nulla da solo.

## Estensione per Edge e Chrome

Su Windows non serve scaricarla: è dentro l'installer, che la copia e la aggiorna. Altrimenti (macOS, o solo per i siti):

1. Scarica **CamMixer-estensione-*versione*.zip** dal link qui sopra ed estrailo in una cartella che non sposterai.
2. Apri `edge://extensions` (o `chrome://extensions`), attiva **Modalità sviluppatore**, **Carica decompressa** e scegli la cartella estratta.

Quando esce una versione nuova le impostazioni dell'estensione lo segnalano: estrai lo zip nuovo nella stessa cartella e l'estensione si ricarica da sola.

## macOS (con OBS Studio)

Su macOS una webcam di sistema deve essere firmata da Apple; CamMixer usa quindi la fotocamera virtuale di [OBS Studio](https://obsproject.com).

```sh
curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
```

Lo script installa il programma ponte per l'utente (senza amministratore), lo avvia a ogni accesso e copia negli appunti l'indirizzo da usare in OBS come sorgente **Browser** (1280×720). Poi in OBS *Avvia fotocamera virtuale* e in Teams scegli **OBS Virtual Camera**. Il programma si aggiorna da solo.

Disinstallazione: `bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi`

## Verifica antivirus

Ogni versione, prima di essere pubblicata, viene controllata con Microsoft Defender, ClamAV, [VirusTotal](https://www.virustotal.com), MetaDefender (OPSWAT) e la sandbox Hybrid Analysis; se uno di questi segnala qualcosa non viene pubblicata. Ai servizi esterni vanno solo i file binari. Le note di ogni rilascio, e la cartella [`verifiche`](verifiche), riportano le impronte SHA-256, SHA-1 e MD5 dell'installer, dello zip e dei programmi che contengono, con la validazione VirusTotal di ciascun file e il link al rapporto. Per controllare un file scaricato: `Get-FileHash .\CamMixer-Setup-<versione>.exe` in PowerShell, `shasum -a 256 CamMixer-macOS-<versione>.zip` sul Mac.

## Codice di terze parti

[`TERZE-PARTI.md`](TERZE-PARTI.md) elenca il codice di altri progetti usato da CamMixer, con versione, licenza e impronte; i testi delle licenze sono in [`licenze`](licenze).

## Aggiornamenti

[`aggiornamenti.json`](aggiornamenti.json) indica l'ultima versione con l'indirizzo e l'impronta SHA-256 di ogni file (installer per Windows, programma per macOS, estensione). L'estensione lo controlla ogni 6 ore per segnalare le versioni nuove; il programma per macOS scarica solo file di questi rilasci con l'impronta giusta.
