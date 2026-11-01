# CamMixer · releases

Installers of **CamMixer**: virtual webcams with effects, backgrounds and lower thirds created by the extension for Microsoft Edge and Chrome, usable also in **Microsoft Teams desktop**, Zoom and the other apps on the computer.

**All CamMixer releases are here**: Windows installer, macOS program and extension for Edge and Chrome. They are built on GitHub Actions and checked with antivirus engines and a sandbox before publishing; the source code is in a private repository.

The interface is in English; the flags at the top of the extension settings switch it to Italian (Italiano).

## Direct download (version 1.3.1, extension 1.7.0)

- Windows 11: [CamMixer-Setup-1.3.1.exe](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-Setup-1.3.1.exe)
- macOS: [CamMixer-macOS-1.3.1.zip](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-macOS-1.3.1.zip)
- Extension for Edge and Chrome (only needed without the Windows installer): [CamMixer-estensione-1.7.0.zip](https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/scarica/CamMixer-estensione-1.7.0.zip)

What changed in each version: [CHANGELOG.md](CHANGELOG.md). Hashes and antivirus results: [`verifiche/CamMixer-1.3.1.md`](verifiche/CamMixer-1.3.1.md).

**This version was published on request although the antivirus check did not pass.** Microsoft Defender and ClamAV find nothing, and the programs inside the installer are clean on every VirusTotal engine. On VirusTotal, 5 machine-learning or heuristic engines out of about 70 flag the installer itself; Microsoft no longer does. The macOS program and the zip files have no detections.

## Windows 11

1. Download **CamMixer-Setup-*version*.exe** from the link above and run it. The installer asks for the language (English or Italian). It is not signed: if "Windows protected your PC" appears, choose *More info › Run anyway*.
2. In Teams: *Settings › Devices › Camera › **CamMixer***.
3. In the extension settings, box *Webcam for Teams, Zoom and the other apps on the computer*, choose which virtual webcam to send. Microsoft Edge must stay open.

When a new version comes out, the extension settings show *Open the releases page*: download the new installer and run it. The Windows program does not download or install anything by itself.

## Extension for Edge and Chrome

On Windows there is no need to download it: it is inside the installer, which copies it and keeps it updated. Otherwise (macOS, or websites only):

1. Download **CamMixer-estensione-*version*.zip** from the link above and extract it to a folder you will not move.
2. Open `edge://extensions` (or `chrome://extensions`), turn on **Developer mode**, press **Load unpacked** and choose the extracted folder.

When a new version comes out the extension settings say so: extract the new zip to the same folder and the extension reloads itself.

## macOS (with OBS Studio)

On macOS a system webcam must be signed by Apple, so CamMixer uses the [OBS Studio](https://obsproject.com) virtual camera.

```sh
curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
```

The script installs the bridge program for the user (no administrator), starts it at every sign-in and copies to the clipboard the address to use in OBS as a **Browser** source (1280×720). Then in OBS press *Start Virtual Camera* and in Teams choose **OBS Virtual Camera**. The program updates itself.

Uninstall: `bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi`

## Antivirus check

Before being published, every version is checked with Microsoft Defender, ClamAV, [VirusTotal](https://www.virustotal.com), MetaDefender (OPSWAT) and the Hybrid Analysis sandbox; if one of them reports something, it is not published. Only binary files go to the external services. The notes of every release, and the [`verifiche`](verifiche) folder, list the SHA-256, SHA-1 and MD5 hashes of the installer, of the zip files and of the programs they contain, with the VirusTotal validation of each file and the link to the report. To check a downloaded file: `Get-FileHash .\CamMixer-Setup-<version>.exe` in PowerShell, `shasum -a 256 CamMixer-macOS-<version>.zip` on the Mac.

## Third-party code

[`THIRD-PARTY.md`](THIRD-PARTY.md) lists the code of other projects used by CamMixer, with version, licence and hashes; the licence texts are in [`licenses`](licenses).

## Updates

[`aggiornamenti.json`](aggiornamenti.json) gives the latest version with the address and SHA-256 hash of each file (Windows installer, macOS program, extension). The extension checks it every 6 hours to report new versions; the macOS program downloads only files from these releases with the right hash.
