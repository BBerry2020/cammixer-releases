# CamMixer - version history

Each release has two numbers: the **programs** (Windows installer and macOS program, `versione-programmi.txt`) and the **extension** for Edge and Chrome (`manifest.json`). The Windows installer always contains the extension. *Built with* lists the versions of the libraries and build tools; the full register is in [THIRD-PARTY.md](THIRD-PARTY.md). Hashes and antivirus results of every published release are in the release notes and in `verifiche/` in [cammixer-releases](https://github.com/BBerry2020/cammixer-releases).

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
