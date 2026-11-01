# CamMixer · releases

Installers of **CamMixer**: virtual webcams with effects, backgrounds and lower thirds created by the extension for Microsoft Edge and Chrome, usable also in **Microsoft Teams desktop**, Zoom and the other apps on the computer, and recordable as videos or screenshots.

**All CamMixer releases are here**: Windows installer, macOS program and extension for Edge and Chrome. They are built on GitHub Actions and gated by supply-chain checks before publishing; the source code is in a private repository.

The interface is in English; the flags at the top of the extension settings switch it to Italian (Italiano).

## Windows 11

1. Download **CamMixer-Setup-*version*.exe** from the [latest release](https://github.com/BBerry2020/cammixer-releases/releases/latest) and run it. The installer asks for the language (English or Italian). It is not signed: if "Windows protected your PC" appears, choose *More info › Run anyway*.
2. In Teams: *Settings › Devices › Camera › **CamMixer***.
3. In the extension settings, box *Webcam for Teams, Zoom and the other apps on the computer*, choose which virtual webcam to send. Microsoft Edge must stay open.

When a new version comes out, the extension settings show *Open the releases page*: download the new installer and run it. The Windows program does not download or install anything by itself.

Voice with filters and effects in Teams desktop too: the installer offers to install **VB-CABLE** by VB-Audio Software, a virtual audio device (restart Windows afterwards); then tick *Send the voice too* in the extension settings and choose the microphone **CABLE Output (VB-Audio Virtual Cable)** in Teams. The origin of VB-CABLE : [www.vb-cable.com](https://vb-audio.com/Cable/). VB-CABLE is a donationware, all participations are welcome: if you find it useful, donate or buy a licence there. Unattended installations can skip it with `/MERGETASKS="!vbcable"`.

Logs for troubleshooting (installation, program, extension, webcam) are all in `C:\Program Files\CamMixer\logs`.

## Extension for Edge and Chrome

On Windows there is no need to download it: it is inside the installer, which copies it and keeps it updated. Otherwise (macOS, or websites only):

1. Download **CamMixer-estensione-*version*.zip** from the [latest release](https://github.com/BBerry2020/cammixer-releases/releases/latest) and extract it to a folder you will not move.
2. Open `edge://extensions` (or `chrome://extensions`), turn on **Developer mode**, press **Load unpacked** and choose the extracted folder.

When a new version comes out the extension settings say so: extract the new zip to the same folder and the extension reloads itself.

## macOS (with OBS Studio)

On macOS a system webcam must be signed by Apple, so CamMixer uses the [OBS Studio](https://obsproject.com) virtual camera.

```sh
curl -fsSL https://raw.githubusercontent.com/BBerry2020/cammixer-releases/main/installa-mac.sh | bash
```

The script installs the bridge program for the user (no administrator), starts it at every sign-in and copies to the clipboard the address to use in OBS as a **Browser** source (1280×720). Then in OBS press *Start Virtual Camera* and in Teams choose **OBS Virtual Camera**. The program updates itself.

Uninstall: `bash "$HOME/Library/Application Support/CamMixer/installa-mac.sh" --rimuovi`

## Supply-chain checks

Before being published, every version goes through supply-chain checks; if one of them fails, it is not published:
- every piece of third-party code is registered with version, licence and hashes, and the files included are identical to the official packages;
- no known vulnerabilities in the libraries and build tools used (npm advisories, OSV.dev, GitHub Advisory Database);
- libraries and build tools at their latest versions, with the build tools pinned by version, hash and signature (GitHub Actions by commit SHA).

The notes of every release, and the [`verifiche`](verifiche) folder, list the SHA-256, SHA-1 and MD5 hashes of the installer, of the zip files and of the programs they contain, and the result of these checks. To check a downloaded file: `Get-FileHash .\CamMixer-Setup-<version>.exe` in PowerShell, `shasum -a 256 CamMixer-macOS-<version>.zip` on the Mac. The installer is not code-signed and releases are not checked with antivirus services, so some heuristic engines may flag it.

## Third-party code

[`THIRD-PARTY.md`](THIRD-PARTY.md) lists the code of other projects used by CamMixer, with version, licence and hashes; the licence texts are in [`licenses`](licenses).

## Updates

[`aggiornamenti.json`](aggiornamenti.json) gives the latest version with the address and SHA-256 hash of each file (Windows installer, macOS program, extension). The extension checks it every 6 hours to report new versions; the macOS program downloads only files from these releases with the right hash.
