# CamMixer - version history

Each release has two numbers: the **programs** (Windows installer and macOS program, `versione-programmi.txt`) and the **extension** for Edge and Chrome (`manifest.json`). The Windows installer always contains the extension. *Built with* lists the versions of the libraries and build tools; the full register is in [THIRD-PARTY.md](THIRD-PARTY.md). Hashes and check results of every published release are in the release notes and in `verifiche/` in [cammixer-releases](https://github.com/BBerry2020/cammixer-releases).

## 1.8.0 (extension 1.12.0) - 2026-11-01

- **VB-CABLE in the Windows installer**: the voice for Teams desktop and the other apps no longer needs a separate download. The installer contains the official VB-CABLE package by VB-Audio Software (Driver Pack 45, unchanged) and, when VB-CABLE is not on the computer, offers the task *Install VB-CABLE Virtual Audio Device* (checked):
  - The origin of VB-CABLE : www.vb-cable.com. VB-CABLE is a donationware, all participations are welcome: the installer says so on its first page and on the tasks page, and the last page offers to open www.vb-cable.com to donate (distribution allowed by VB-Audio on these terms; licence notes in `licenses/VB-CABLE.txt`);
  - VB-Audio's own setup installs it (`VBCABLE_Setup_x64.exe -i -h`, x64 and ARM64); Windows may ask to confirm the driver; restart Windows afterwards, as the last page reminds;
  - `install.log` records VB-CABLE before and after the setup; if it cannot be installed, CamMixer is installed anyway and a message says how to install it later;
  - uninstalling CamMixer asks whether to remove VB-CABLE too, only if the CamMixer installer installed it (silent: `/REMOVEVBCABLE`); otherwise it stays, and can be removed from Windows *Settings › Apps › VBCABLE, The Virtual Audio Cable*; unattended installations can skip it with `/MERGETASKS="!vbcable"`.
- Supply chain: the VB-CABLE package is pinned by number and SHA-256 in `terze-parti.json`; the build checks the signatures of its setups and driver catalogs (VB-Audio, and Microsoft for the Windows 10/11 driver) and its driver service; the version check reads the VB-Audio page. New type in the third-party register: programs of other projects included in the installer.
- Settings: the hint of *Send the voice too* says that the installer can install VB-CABLE.
- Tests: on Windows x64 the real installer installs VB-CABLE (device and driver service checked), a second installation leaves it as it is, uninstalling with `/REMOVEVBCABLE` removes it; on Windows ARM64 VB-Audio's setup is run directly.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187. Included, optional: VB-CABLE Driver Pack 45.

## 1.7.0 (extension 1.11.0) - 2026-11-01

- **Voice for Teams desktop and the other apps, together with the video**: the mixed voice (microphone with the voice filters and effect of the virtual webcam sent to the apps) goes into a virtual audio cable, [VB-Cable](https://vb-audio.com/Cable/) by VB-Audio, installed once by the user (Windows has no virtual microphone without a signed driver). In Teams choose the microphone "CABLE Output (VB-Audio Virtual Cable)".
  - settings: "Send the voice too", the cable (found by itself), "When" and the status;
  - the real microphone opens only while an app on the computer is using a microphone: the CamMixer program reads it from the Windows privacy settings (on macOS: while OBS reads the video); or always, if chosen;
  - the effect changes on the fly; if the cable is disconnected the voice stops.
- Tests: what comes out of a virtual cable is measured (Linux, PulseAudio, with a fake CamMixer program); on Windows, a fake app using a microphone must be reported by the program, and the program must write the extension log lines.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.6.0 (extension 1.10.0) - 2026-11-01

- **All the logs in one folder: `C:\Program Files\CamMixer\logs`** (on macOS next to the program's log, in `~/Library/Application Support/CamMixer`):
  - `install.log` and `setup-last.log` (installer; the existing `install.log` is moved there with its history);
  - `ponte.log` (CamMixer program; it was in `%LOCALAPPDATA%\CamMixer`);
  - **`estensione.log`, new: the browser extension's log**, written by the CamMixer program: virtual webcams on and off with the real webcam used, cut-out, components turned off by an error, voice, recordings and screenshots, connection to the program, apps opening the webcam, updates, unhandled errors; in websites only the website name;
  - `CamMixerCam.log` (video source; it was in the temporary folder of the Frame Server service).
- The installer creates `logs` writable by the users and by the Frame Server service only; uninstalling removes it.
- Settings: the log folder is shown in the box for Teams and the other apps; "Save the extension log" saves the last 3000 lines as a text file, also without the program.
- Tests: the Windows test checks the logs folder (files, permissions, no programs inside, lines from the extension in `estensione.log`); the recording test checks the extension log lines and the saved file.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.5.0 (extension 1.9.0) - 2026-11-01

- **Voice: the microphone is the second input of the mixer.** Each virtual webcam has its voice:
  - microphone choice, level bar (next to the preview too), "Listen to yourself" with headphones, browser noise and echo reduction, volume up to 200%;
  - voice filters: cut low rumble, clearer voice, even out the volume, silence when you are not speaking;
  - fun voice effects: trap autotune (the voice snaps to the nearest semitone), robot, chipmunk, monster, alien, old telephone, walkie-talkie, megaphone, echo, cathedral, with an effect amount;
  - in websites the microphone goes through the mixer too, when a virtual webcam is used instead of the real one; the effect can be changed from the panel during the call;
  - Teams desktop and the other apps get the real microphone, without effects.
- **Recordings have sound by default**: the voice of the virtual webcam, with its filters and effect (in 1.4.0 the microphone had to be turned on, and it was off).
- New voice test (`prova-voce.py`, Chromium and Edge): pitch and spectrum of every effect measured on a fake microphone.
- Releases are published only if the browser tests pass too (recording and voice on Chromium and Edge, languages), besides the supply-chain checks.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

## 1.4.0 (extension 1.8.0) - 2026-11-01

- **Recording and screenshots** of what the virtual webcam sends, as the others see it (not mirrored):
  - "Record" and "Screenshot" next to the preview in the settings, and in the panel during a chat; a red "REC" mark with the time on the preview and on the collapsed panel;
  - videos in MP4 (H.264, with AAC audio in Edge and Chrome) or WebM (VP9), quality 1.5, 4 or 8 Mbit/s, optionally with the microphone;
  - screenshots in PNG at full resolution;
  - files in the browser's downloads folder, named `CamMixer-<webcam>-<date>_<time>`;
  - at most 60 minutes or 1.5 GB per recording; the video is saved by itself also when the call ends or the webcam stops.
- New `registrazione` test on Playwright Chromium (Linux) and Microsoft Edge (Windows): every recorded file is checked frame by frame.
- Test note: the extra Direct3D read of the Windows test (not blocking) fails with `DXGI_ERROR_DEVICE_REMOVED` on the newest GitHub x64 runner image (20261030, Windows build 26100.33674) and now and then on the ARM64 runners, which have no graphics card. With the previous x64 image it passes with 1.3.3 and 1.4.0 alike; the Windows programs are unchanged from 1.3.3.

Built with: Inno Setup 7.1.1 · MediaPipe Tasks Vision 1.2.0 · Three.js r187.

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
