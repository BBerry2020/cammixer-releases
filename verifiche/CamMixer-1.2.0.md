Installer per Windows 11 (`CamMixer-Setup-1.2.0.exe`, contiene anche l'estensione), programma per macOS da usare con OBS (`CamMixer-macOS-1.2.0.zip`) ed estensione per Edge e Chrome (`CamMixer-estensione-1.6.0.zip`).

Tutti i rilasci: https://github.com/BBerry2020/cammixer-releases

> **Attenzione:** questa versione è stata pubblicata su richiesta **prima che la verifica antivirus fosse completata**; il risultato, arrivato dopo, è in fondo.

### Impronte

| File | SHA-256 | SHA-1 | MD5 |
|---|---|---|---|
| CamMixer-Setup-1.2.0.exe | `45987118f4bf0f59cfb9d3bb44f2e37244bbbf3bd539937abd141984bf9ef09c` | `c282dc180d32b80d428fa5e598b27e75e127dca1` | `72ccbc6f34ba2018b21ba1173ad56dfa` |
| CamMixer-macOS-1.2.0.zip | `9ea1557760690b6ec601bf6ec0d0422db3442ff7ea97d793d17d937af18da221` | `c81ab30568f9c2a8254b0c471d642667166d365e` | `0fd32773abf0ce71adfb408ffd44993b` |
| CamMixer-estensione-1.6.0.zip | `a85e9de010800d38bc93ec09428953b3255907115d7249be46374b7560d5bcb1` | `b43c12f4eeafdb863a486f1d2b86dc8e62254092` | `cc925d4a6e89b9a985dbb2f13a21c705` |

Per controllare un file scaricato: in PowerShell `Get-FileHash .\CamMixer-Setup-1.2.0.exe`; sul Mac `shasum -a 256 CamMixer-macOS-1.2.0.zip`.

### Verifica antivirus (dopo la pubblicazione, 1 novembre 2026)

| File | Microsoft Defender · ClamAV | VirusTotal | Rapporto |
|---|---|---|---|
| CamMixer-Setup-1.2.0.exe | ✅ pulito · ✅ pulito | ⚠️ **3 antivirus su circa 70**: APEX (Malicious), DeepInstinct (MALICIOUS), Skyhigh (BehavesLike.Win32.ObfuscatedPoly) | [VirusTotal](https://www.virustotal.com/gui/file/45987118f4bf0f59cfb9d3bb44f2e37244bbbf3bd539937abd141984bf9ef09c) |
| CamMixer-macOS-1.2.0.zip | ✅ pulito · ✅ pulito | ✅ nessuna segnalazione | [VirusTotal](https://www.virustotal.com/gui/file/9ea1557760690b6ec601bf6ec0d0422db3442ff7ea97d793d17d937af18da221) |
| cammixer-ponte (macOS, dentro lo zip) | ✅ pulito · ✅ pulito | ✅ nessuna segnalazione | [VirusTotal](https://www.virustotal.com/gui/file/f1396e39a744f8a662624421bcbe93f76f64b2650d41bd264e8aeccc6e7817b4) |
| CamMixer-estensione-1.6.0.zip | ✅ pulito · ✅ pulito | non inviato: è codice sorgente, non un binario | — |

Le tre segnalazioni sull'installer vengono da motori euristici e «ad apprendimento automatico», che giudicano un file per somiglianza; nessun motore a firme (Microsoft, Kaspersky, ESET, Bitdefender…) lo segnala. Sono tipiche degli installer nuovi e non firmati. Secondo la regola di CamMixer (blocco da 1 antivirus) **la verifica non è superata**: la versione è stata pubblicata comunque, su richiesta, per provarla. Su una compilazione quasi identica anche Microsoft aveva segnalato `Trojan:Win32/Wacatac.C!ml` (rilevazione ad apprendimento automatico): se Windows blocca l'installer, è questo.
