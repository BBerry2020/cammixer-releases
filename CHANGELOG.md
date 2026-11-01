# CamMixer - version history

Each release has two numbers: the **programs** (Windows installer and macOS program, `versione-programmi.txt`) and the **extension** for Edge and Chrome (`manifest.json`). The Windows installer always contains the extension. *Built with* lists the versions of the libraries and build tools; the full register is in [THIRD-PARTY.md](THIRD-PARTY.md). Hashes and check results of every published release are in the release notes and in `verifiche/` in [cammixer-releases](https://github.com/BBerry2020/cammixer-releases).

## 1.3.3 (extension 1.7.2) - 2026-11-01

Everything in 1.3.2, plus:

- New animated background: digital rain (columns of green characters falling at different speeds, the farther ones slower and darker).
- **Releases are no longer checked with antivirus services** (owner's decision): the installer is legitimate, and the detections came from heuristic and machine-learning engines that change from build to build. Releases are gated instead by **supply-chain checks**:
  - third-party code register in order, and the included files identical to the official npm packages;
  - no known vulnerabilities (npm advisories, OSV.dev, GitHub Advisory Database);
  - libraries and build tools at their latest versions;
  - GitHub Actions pinned by commit SHA, with the SHA checked against the tag; Inno Setup pinned by version, hash and signature.
- Release notes: hashes of every file and of the programs inside, versions it is built with, result of the supply-chain checks.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.3.2 (extension 1.7.1) - not published

- Windows installer, in the language chosen at start (English or Italian):
  - a page explains what CamMixer is and what the setup installs;
  - a page shows the versions of Windows, Microsoft Edge, Google Chrome and Microsoft Teams found on the computer, and the camera privacy settings, with warnings when something is missing or turned off;
  - the same data, with the result of the installation, is appended to `C:\Program Files\CamMixer\install.log`, and the detailed setup log is copied to `setup-last.log`, for troubleshooting;
  - a "CamMixer" entry in the Start menu: the CamMixer webcam asks to start the program from there when it is not running.
- Rotating 3D logo:
  - the content (image or text) is now upright (it was turned by 90°);
  - a new "Rotation" slider turns it to straighten an image.
- Retro computer graphics:
  - backgrounds: green phosphor terminal (text typed on an old monochrome monitor, with glow and scanlines), CGA graphics (320 pixels, 4 colours) and EGA graphics (320 pixels, 16 colours);
  - video effects: green phosphor monitor, CGA palette (4 colours) and EGA palette (16 colours), with ordered dithering.
- **Blocked by the antivirus check, never published.** The functional tests passed. On VirusTotal 5 engines flagged the installer: APEX, DeepInstinct, Elastic, Kaspersky (`not-a-virus` RemoteAdmin) and Microsoft (`Wacatac.C!ml`, a machine-learning detection that had not flagged 1.3.1). After this, the antivirus check was dropped (see 1.3.3).

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.3.1 (extension 1.7.0) - 2026-11-01

Same features as 1.3.0, with a new Windows installer.

- Windows installer built with **Inno Setup 7.1.1** instead of the Inno Setup 6 preinstalled on the build machine. The version is now pinned, and the build checks the installer's digital signature before installing it. The Windows setup is still a 32-bit x86 installer, as before.
- Library and tool versions are checked before every commit and at every push. The commit stops if a newer version with bug or security fixes has not been adopted or evaluated.
- Build machines: GitHub Actions updated (checkout v7, upload-artifact v7, download-artifact v8, setup-python v7).
- **Published on request although the antivirus check did not pass.** The programs inside are clean on every engine, and Microsoft no longer flags the installer (it did with Inno Setup 6). On VirusTotal, 5 engines flag the installer:
  - APEX
  - DeepInstinct
  - Elastic (moderate confidence)
  - Kaspersky `not-a-virus:VHO:RemoteAdmin.MSIL.ConnectWise.gen`
  - Skyhigh `BehavesLike.Win32.Dropper`

  The files published are exactly those that were checked.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.3.0 (extension 1.7.0) - not published

- Interface in English, with flags to switch to Italian. The language applies everywhere: settings page, panel inside websites, texts on the video, Windows and macOS programs, waiting screens of the CamMixer webcam. The Windows installer asks for the language.
- Settings page: preview always in view, with the editing controls below it and the real webcam small at the side. The rotating 3D logo can show free text or an image, and the 3D objects on the face have a single control (from extension 1.6.1, never released on its own).
- Documentation in English (README, THIRD-PARTY.md, licences, release notes).
- **Blocked by the antivirus check, never published.** The programs inside were clean on every engine, but the installer was flagged by 4 machine-learning engines on VirusTotal: APEX, DeepInstinct, Microsoft `Trojan:Win32/Wacatac.B!ml` and Skyhigh `BehavesLike.Win32.ObfuscatedPoly`.

Built with: Inno Setup 6.x of the build machine (not pinned) · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.2.0 (extension 1.6.0) - 2026-11-01

- Optional 3D examples (Three.js r187):
  - backgrounds: 3D TV studio, 3D crystals;
  - effects on the graphics card;
  - glasses, crown and robot avatar that follow the face (MediaPipe FaceLandmarker);
  - rotating 3D logo.
- MediaPipe Tasks Vision 1.2.0.
- The extension connects to the CamMixer program in Edge too.
- The extension reports new versions; all releases, including the extension zip, are in cammixer-releases.
- Windows program:
  - the automatic self-update was removed (it downloaded and ran installers);
  - version information was added to the programs;
  - the installer closes the program by asking it, instead of using `taskkill`.
- Register of third-party code and licences in the installer.
- **Published on request before the antivirus check was complete.** On VirusTotal, 3 heuristic engines flagged the installer: APEX, DeepInstinct and Skyhigh.

Built with: Inno Setup 6.x of the build machine (not pinned) · MediaPipe Tasks Vision 1.2.0.

## 1.1.1 (extension 1.5.1) - 2026-10-31

- The Windows installer contains the extension. `CamMixer.exe` copies it and keeps it updated, and a guide explains how to turn it on in Edge the first time.
- The installation warns if the same or a newer version is already installed.
- Person cut-out on websites with Trusted Types (for example Teams on the web): the extension injects the MediaPipe loader.
- MediaPipe's technical messages are no longer shown as errors in Edge.

Built with: Inno Setup 6.x of the build machine (not pinned).

## 1.1.0 - 2026-10-31

- First Windows installer (Inno Setup).
- The "CamMixer" system webcam for Teams desktop, Zoom and the other apps.
- macOS bridge program for OBS Studio.

## Earlier extension versions (as "Webcam virtuali")

- 1.3.x: virtual webcams for websites, with effects, backgrounds and lower thirds.
- 1.4.0: first version sending the virtual webcam to the Windows webcam.
