# Third-party code

Register of all the external code used by CamMixer: included in the distributed files, present in the built programs, downloaded during use, used as a reference or only for building and testing.

The register is [`terze-parti.json`](terze-parti.json); this file is generated from it with `python3 .github/terze-parti.py --ricalcola --scrivi`. At every change the `terze-parti` workflow checks that hashes, licences and this document are in order, and that no unregistered file contains copyright or licence notices.

All the rest of the code (extension, Windows and macOS programs, installation, tests) is written for CamMixer.

## Included in the distributed files

Code of other projects present in the repository and in the files downloaded from cammixer-releases.

| Component | Version | Licence | Use |
|---|---|---|---|
| [MediaPipe Tasks Vision](https://github.com/google-ai-edge/mediapipe) | 1.2.0 | [Apache-2.0](licenses/Apache-2.0.txt) | person cut-out (ImageSegmenter) and face tracking for the 3D examples (FaceLandmarker) in the extension: websites, settings, hidden document for the programs |
| [Three.js](https://threejs.org) | r187 (0.187.0) | [MIT](licenses/MIT-three.js.txt) | optional 3D examples (3D backgrounds, effects on the graphics card, 3D objects on the face, 3D logo): loaded only if turned on in the settings |

### MediaPipe Tasks Vision

- Copyright: The MediaPipe Authors (Google LLC)
- Source: https://www.npmjs.com/package/@mediapipe/tasks-vision/v/1.2.0
- Package: https://registry.npmjs.org/@mediapipe/tasks-vision/-/tasks-vision-1.2.0.tgz (`sha512-7+dr9GbGyTtcuLh11wE5TOn4dNFRncIT9oAWs72620WX99KW5FfzF6rFJ/ChTgXG9vJ6dCiE9FrEEY4CnwPWKQ==`)
- Distributed in: extension, extension zip, Windows installer
- Changes: none: files of the npm package copied as they are (the licence copy is in mediapipe/LICENSE.txt)

| File | SHA-256 |
|---|---|
| `mediapipe/vision_bundle.mjs` | `870da5cfc43bfcf2a8b0f14e8152dae8c7e701722e1191b0e592b94b81b4127a` |
| `mediapipe/wasm/vision_wasm_internal.js` | `85c1a342be70427987f900969a5f26e17557351111364e6585e97fb03e93e108` |
| `mediapipe/wasm/vision_wasm_internal.wasm` | `bcc13df22d3d69ec8cbe8e280989356d844ae00f4523eb82072d2484f44134dc` |

### Three.js

- Copyright: three.js authors
- Source: https://www.npmjs.com/package/three/v/0.187.0
- Package: https://registry.npmjs.org/three/-/three-0.187.0.tgz (`sha512-Qiu7R+Cmh8CstZsY1uJOSWnVlfo7ZtNLV7mF8Jltk3LB3AtDu9cRZlcnRKkAk8Y4z6KKw35z7Y7Urd7jWY8etA==`)
- Distributed in: extension, extension zip, Windows installer
- Changes: none: build/three.module.js, build/three.core.js and LICENSE of the npm package copied as they are

| File | SHA-256 |
|---|---|
| `three/three.module.js` | `104f56145899722094556490d787aae0617cc2fc3382f31df02d724ea1aee341` |
| `three/three.core.js` | `613e370f76638fdef83926642bf256dc9615684922de1ce1f63a8583e5d78578` |
| `three/LICENSE` | `8b378ebe60e2fe500158cb0ac71cb5e8b7d92953c2abcc63a0eb90499653b5bc` |

## Tools whose code ends up in the programs

They are not in the repository, but the built programs contain part of them.

| Component | Version | Licence | Use |
|---|---|---|---|
| [Inno Setup](https://jrsoftware.org/isinfo.php) | 7.1.1 | [Inno Setup License](licenses/Inno-Setup.txt) | creates CamMixer-Setup-<version>.exe from windows/installer/cammixer.iss (32-bit x86 installer, like before; the build installs exactly this version of the 64-bit compiler edition after checking its digital signature: .github/inno-setup.ps1); the setup program contains Inno Setup code |
| [Microsoft C/C++ runtime library (MSVC)](https://learn.microsoft.com/cpp/c-runtime-library/) | Visual Studio 2022 on the windows-2025 runner | Microsoft Visual Studio licence (redistributable code) | statically linked (/MT) in CamMixer.exe and CamMixerCam.dll |

### Inno Setup

- Copyright: Jordan Russell, Martijn Laan
- Source: https://github.com/jrsoftware/issrc/releases/tag/is-7_1_1
- Package: https://github.com/jrsoftware/issrc/releases/download/is-7_1_1/innosetup-7.1.1-x64.exe (`SHA-256 8a5a6711c3766a6e5fb74f280ba0e3551e719ce94538d901fdbd1f8f9920b3f0, signed by Pyrsys B.V.`)
- Distributed in: Windows installer
- Changes: none
- Version history:
  - CamMixer 1.1.0 - 1.2.0: Inno Setup 6.x preinstalled on the GitHub windows-2025 runner (version not pinned)
  - CamMixer 1.3.0: same, not published (installer flagged by 4 machine-learning engines on VirusTotal)
  - CamMixer 1.3.1 and later: Inno Setup 7.1.1 (pinned by version, SHA-256 and signature; 6.7.4 evaluated and pinned briefly on a work branch, never released)

### Microsoft C/C++ runtime library (MSVC)

- Copyright: Microsoft Corporation
- Source: https://visualstudio.microsoft.com/license-terms/
- Distributed in: Windows installer
- Changes: none

## Downloaded by the extension during use

Not included in the distributed files.

| Component | Version | Licence | Use |
|---|---|---|---|
| [selfie_segmenter_landscape model (MediaPipe)](https://ai.google.dev/edge/mediapipe/solutions/vision/image_segmenter) | float16/latest | [Apache-2.0](licenses/Apache-2.0.txt) | cut-out model: the extension downloads it the first time and keeps it in its own cache (background.js) |
| [face_landmarker model (MediaPipe)](https://ai.google.dev/edge/mediapipe/solutions/vision/face_landmarker) | float16/latest | [Apache-2.0](licenses/Apache-2.0.txt) | face tracking for the 3D examples on the face: downloaded only when one is turned on and kept in the extension cache |

## Used as a reference (no code copied)

Projects studied to write our own code; licences kept in licenses/ for transparency.

| Component | Version | Licence | Use |
|---|---|---|---|
| [VCamSample](https://github.com/smourier/VCamSample) | commit 58b6d4b (2026-08-28) | [MIT](licenses/MIT-VCamSample.txt) | reference for the structure of the Media Foundation video source (windows/src/sorgente.cpp) and for the undocumented value MF_FRAMESERVER_CLIENTCONTEXT_CLIENTPID (windows/src/mfdefs.h, from Undocumented.h) |
| [CamLights](https://github.com/pdinsd/CamLights) | commit e2a9e02 (2026-10-27) | [Apache-2.0](licenses/Apache-2.0.txt) | reference for the structure of the video source (windows/src/sorgente.cpp) |
| [Xcode "Camera Extension" template](https://developer.apple.com/documentation/coremediaio/creating-a-camera-extension-with-core-media-i-o) | Xcode on the macos-15 runner | Xcode licence (Apple) | structure of the native macOS webcam (macos/fotocamera), only built and not distributed |

### VCamSample

- Copyright: Simon Mourier
- Source: https://github.com/smourier/VCamSample
- Changes: code written from scratch; comparison of 2026-10-31: no line copied beyond trivial statements

### CamLights

- Copyright: CamLights authors
- Source: https://github.com/pdinsd/CamLights
- Changes: code written from scratch; comparison of 2026-10-31: no line copied

### Xcode "Camera Extension" template

- Copyright: Apple Inc.
- Source: https://developer.apple.com/xcode/
- Changes: code written from scratch following the template

## Only for building and testing (not distributed)

Used by GitHub Actions and by the automatic tests.

| Component | Version | Licence | Use |
|---|---|---|---|
| [Playwright (Python)](https://playwright.dev/python/) | latest on PyPI | [Apache-2.0](licenses/Apache-2.0.txt) | automatic tests with Chromium and Edge (.github, windows/test, macos/test) |
| [websockets](https://github.com/python-websockets/websockets) | latest on PyPI | BSD-3-Clause | tests: fake bridge program and WebSocket client |
| [Pillow](https://python-pillow.org) | latest on PyPI | MIT-CMU | tests: reading the colours of the frames |
| [Official GitHub Actions (checkout, upload-artifact, download-artifact, setup-python)](https://github.com/actions) | checkout v7.0.1, upload-artifact v7.0.2, download-artifact v8.0.2, setup-python v7.1.0 (pinned by commit SHA) | MIT | builds, tests and release on GitHub Actions; pinned by commit SHA, checked by .github/controlla-versioni.py |

## How to add third-party code

1. Copy the files as they are (or note the changes) and add the component to `terze-parti.json`, with licence, source and use.
2. Put the licence text in `licenses/` and, if the code is distributed, a copy next to the files (like `mediapipe/LICENSE.txt`).
3. Run `python3 .github/terze-parti.py --ricalcola --scrivi` and include the changes in the same commit.
