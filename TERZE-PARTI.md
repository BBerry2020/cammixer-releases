# Codice di terze parti

Registro di tutto il codice esterno usato da CamMixer: incluso nei file distribuiti, presente nei programmi compilati, scaricato durante l'uso, usato come riferimento o solo per compilare e provare.

Il registro è [`terze-parti.json`](terze-parti.json); questo file si genera da lì con `python3 .github/terze-parti.py --ricalcola --scrivi`. Il workflow `terze-parti` controlla a ogni modifica che impronte, licenze e questo documento siano in regola, e che nessun file non registrato contenga avvisi di copyright o di licenza.

Tutto il resto del codice (estensione, programmi per Windows e macOS, installazione, prove) è scritto per CamMixer.

## Incluso nei file distribuiti

Codice di altri progetti presente nel repository e nei file che si scaricano da cammixer-releases.

| Componente | Versione | Licenza | Uso |
|---|---|---|---|
| [MediaPipe Tasks Vision](https://github.com/google-ai-edge/mediapipe) | 1.2.0 | [Apache-2.0](licenze/Apache-2.0.txt) | ritaglio della persona (ImageSegmenter) nell'estensione: siti, impostazioni, documento nascosto per i programmi |
| [Three.js](https://threejs.org) | r187 (0.187.0) | [MIT](licenze/MIT-three.js.txt) | esempi 3D facoltativi (sfondi 3D, effetti sulla scheda video, oggetti 3D sul volto, logo 3D): caricata solo se attivati nelle impostazioni |

### MediaPipe Tasks Vision

- Copyright: The MediaPipe Authors (Google LLC)
- Provenienza: https://www.npmjs.com/package/@mediapipe/tasks-vision/v/1.2.0
- Pacchetto: https://registry.npmjs.org/@mediapipe/tasks-vision/-/tasks-vision-1.2.0.tgz (`sha512-7+dr9GbGyTtcuLh11wE5TOn4dNFRncIT9oAWs72620WX99KW5FfzF6rFJ/ChTgXG9vJ6dCiE9FrEEY4CnwPWKQ==`)
- Distribuito in: estensione, zip dell'estensione, installer per Windows
- Modifiche: nessuna: file del pacchetto npm copiati così come sono (la copia della licenza è in mediapipe/LICENSE.txt)

| File | SHA-256 |
|---|---|
| `mediapipe/vision_bundle.mjs` | `870da5cfc43bfcf2a8b0f14e8152dae8c7e701722e1191b0e592b94b81b4127a` |
| `mediapipe/wasm/vision_wasm_internal.js` | `85c1a342be70427987f900969a5f26e17557351111364e6585e97fb03e93e108` |
| `mediapipe/wasm/vision_wasm_internal.wasm` | `bcc13df22d3d69ec8cbe8e280989356d844ae00f4523eb82072d2484f44134dc` |

### Three.js

- Copyright: three.js authors
- Provenienza: https://www.npmjs.com/package/three/v/0.187.0
- Pacchetto: https://registry.npmjs.org/three/-/three-0.187.0.tgz (`sha512-Qiu7R+Cmh8CstZsY1uJOSWnVlfo7ZtNLV7mF8Jltk3LB3AtDu9cRZlcnRKkAk8Y4z6KKw35z7Y7Urd7jWY8etA==`)
- Distribuito in: estensione, zip dell'estensione, installer per Windows
- Modifiche: nessuna: build/three.module.js, build/three.core.js e LICENSE del pacchetto npm copiati così come sono

| File | SHA-256 |
|---|---|
| `three/three.module.js` | `104f56145899722094556490d787aae0617cc2fc3382f31df02d724ea1aee341` |
| `three/three.core.js` | `613e370f76638fdef83926642bf256dc9615684922de1ce1f63a8583e5d78578` |
| `three/LICENSE` | `8b378ebe60e2fe500158cb0ac71cb5e8b7d92953c2abcc63a0eb90499653b5bc` |

## Strumenti il cui codice finisce nei programmi

Non sono nel repository, ma i programmi compilati ne contengono una parte.

| Componente | Versione | Licenza | Uso |
|---|---|---|---|
| [Inno Setup](https://jrsoftware.org/isinfo.php) | 6.x (quella del runner windows-2025 di GitHub) | [Inno Setup License](licenze/Inno-Setup.txt) | crea CamMixer-Setup-<versione>.exe da windows/installer/cammixer.iss; il programma di installazione contiene il codice di Inno Setup |
| [Libreria di runtime C/C++ di Microsoft (MSVC)](https://learn.microsoft.com/cpp/c-runtime-library/) | Visual Studio 2022 del runner windows-2025 | Licenza di Microsoft Visual Studio (codice ridistribuibile) | collegata in modo statico (/MT) in CamMixer.exe e CamMixerCam.dll |

### Inno Setup

- Copyright: Jordan Russell, Martijn Laan
- Provenienza: https://jrsoftware.org/isdl.php
- Distribuito in: installer per Windows
- Modifiche: nessuna

### Libreria di runtime C/C++ di Microsoft (MSVC)

- Copyright: Microsoft Corporation
- Provenienza: https://visualstudio.microsoft.com/license-terms/
- Distribuito in: installer per Windows
- Modifiche: nessuna

## Scaricato dall'estensione durante l'uso

Non incluso nei file distribuiti.

| Componente | Versione | Licenza | Uso |
|---|---|---|---|
| [Modello selfie_segmenter_landscape (MediaPipe)](https://ai.google.dev/edge/mediapipe/solutions/vision/image_segmenter) | float16/latest | [Apache-2.0](licenze/Apache-2.0.txt) | modello di ritaglio: l'estensione lo scarica al primo uso e lo conserva nella propria cache (background.js) |
| [Modello face_landmarker (MediaPipe)](https://ai.google.dev/edge/mediapipe/solutions/vision/face_landmarker) | float16/latest | [Apache-2.0](licenze/Apache-2.0.txt) | tracciamento del volto per gli esempi 3D sul volto: scaricato solo quando se ne attiva uno e conservato nella cache dell'estensione |

## Usato come riferimento (nessun codice copiato)

Progetti studiati per scrivere il nostro codice; licenze conservate in licenze/ per trasparenza.

| Componente | Versione | Licenza | Uso |
|---|---|---|---|
| [VCamSample](https://github.com/smourier/VCamSample) | commit 58b6d4b (28/08/2026) | [MIT](licenze/MIT-VCamSample.txt) | riferimento per la struttura della sorgente video Media Foundation (windows/src/sorgente.cpp) e per il valore non documentato MF_FRAMESERVER_CLIENTCONTEXT_CLIENTPID (windows/src/mfdefs.h, da Undocumented.h) |
| [CamLights](https://github.com/pdinsd/CamLights) | commit e2a9e02 (27/10/2026) | [Apache-2.0](licenze/Apache-2.0.txt) | riferimento per la struttura della sorgente video (windows/src/sorgente.cpp) |
| [Modello «Camera Extension» di Xcode](https://developer.apple.com/documentation/coremediaio/creating-a-camera-extension-with-core-media-i-o) | Xcode del runner macos-15 | Licenza di Xcode (Apple) | struttura della webcam nativa per macOS (macos/fotocamera), solo compilata e non distribuita |

### VCamSample

- Copyright: Simon Mourier
- Provenienza: https://github.com/smourier/VCamSample
- Modifiche: codice scritto da capo; confronto del 31/10/2026: nessuna riga copiata oltre a istruzioni banali

### CamLights

- Copyright: autori di CamLights
- Provenienza: https://github.com/pdinsd/CamLights
- Modifiche: codice scritto da capo; confronto del 31/10/2026: nessuna riga copiata

### Modello «Camera Extension» di Xcode

- Copyright: Apple Inc.
- Provenienza: https://developer.apple.com/xcode/
- Modifiche: codice scritto da capo seguendo il modello

## Solo per compilare e provare (non distribuito)

Usati da GitHub Actions e dalle prove automatiche.

| Componente | Versione | Licenza | Uso |
|---|---|---|---|
| [Playwright (Python)](https://playwright.dev/python/) | ultima su PyPI | [Apache-2.0](licenze/Apache-2.0.txt) | prove automatiche con Chromium ed Edge (.github, windows/test, macos/test) |
| [websockets](https://github.com/python-websockets/websockets) | ultima su PyPI | BSD-3-Clause | prove: finto programma ponte e cliente WebSocket |
| [Pillow](https://python-pillow.org) | ultima su PyPI | MIT-CMU | prove: lettura dei colori dei fotogrammi |
| [Requests](https://requests.readthedocs.io) | ultima su PyPI | [Apache-2.0](licenze/Apache-2.0.txt) | verifica antivirus (.github/verifica.py) |
| [ClamAV](https://www.clamav.net) | pacchetto di Ubuntu del runner | GPL-2.0 | verifica antivirus prima della pubblicazione (usato come programma, non incluso) |
| [GitHub Actions ufficiali (checkout, upload-artifact, download-artifact, setup-python)](https://github.com/actions) | v4 e v5 | MIT | compilazione, prove, verifica e rilascio su GitHub Actions |

## Come aggiungere codice di terze parti

1. Copia i file così come sono (o annota le modifiche) e aggiungi il componente in `terze-parti.json`, con licenza, provenienza e uso.
2. Metti il testo della licenza in `licenze/` e, se il codice viene distribuito, una copia accanto ai file (come `mediapipe/LICENSE.txt`).
3. Esegui `python3 .github/terze-parti.py --ricalcola --scrivi` e includi le modifiche nello stesso commit.
