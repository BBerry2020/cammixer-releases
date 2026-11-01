> **Warning:** published on request although the antivirus check did not pass: see *VirusTotal validation* below.

Windows 11 installer (`CamMixer-Setup-1.3.1.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.3.1.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.7.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.3.1.exe**<br>Windows 11 installer (x64 and ARM64) | 5.3 MB | `b7d0360e8ab96eede386b025cea03cbc9f3416161f20da3ee1b477260451bb58` |
| **CamMixer-macOS-1.3.1.zip**<br>macOS program (with OBS) | 169 KB | `e9829b0cd9e6e55244d2a1e05d7ece4d89c7acbc5f572ca9b6a8a7ee5a88f42e` |
| **CamMixer-estensione-1.7.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.5 MB | `34a526f29e9d1655678244716391ffea935468fbc93dd5877cbe15f165acf58e` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 286 KB | `4528e012224b39ee61a09d2dff61e11eefd39bfe19edc2f4684eb8141ae87ff6` |
| Windows x64 · system webcam (installed as CamMixerCam-1.3.1.dll) | 197 KB | `f06be897d4ee28f06994009f3acf365d3cfbb702d16cdbdd71467aa4d37a644e` |
| Windows ARM64 · CamMixer.exe | 277 KB | `f1260cc78d6d7c673cefc117c6707657f3bbfd5acb853bdf96b2a56b410a0c58` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.3.1.dll) | 190 KB | `2eb6ee83ed84eaa907a8323caf94c01ae7d82b2856457a54e66df173ad9b91db` |
| macOS (universal) · cammixer-ponte | 533 KB | `afb44b8f662623acd37db7fecdd53809b99417b001c58a8024ab9e2822ab3d35` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.3.1.exe | `f15db7c543031ebaa89d980b480c7d7398ebd690` | `9568db3211bd901b96759a3f9cfe2c87` |
| CamMixer-macOS-1.3.1.zip | `ee6e71af950bedd246a03949d9ff38fd10860b2f` | `2dc53253b20b28e7c4b55776e42f7f21` |
| CamMixer-estensione-1.7.0.zip | `01dae04a80fdc980c20c11cf48be4cf520be1d2b` | `0362aad1465a894e80f6119c01e7c12d` |
| CamMixer.exe (Windows x64) | `d816bf1d01403b29d81e277cbfe7855fd1a83262` | `bb164487cd0c18e7c58a32cc04d96755` |
| CamMixerCam.dll (Windows x64) | `68b4ad6738df55a706ec0af6810835d9a5a03f30` | `6e697522fd46d79d9ab9809253fad0ac` |
| CamMixer.exe (Windows ARM64) | `f7282dc2811df352054ad5159225c9f2913e7ab1` | `0c7d832c994f3a0e5618a89a2bc06f28` |
| CamMixerCam.dll (Windows ARM64) | `2704d0bab690258d02a123b4a068403b7580ef5f` | `618f0742aadff3e03dd5b1aa177febf2` |
| cammixer-ponte (macOS) | `1079acc1aa08a1737a6e75c3130455a30c012c08` | `f80db1cc15420f039b3f71dae075e1ea` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.3.1.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.3.1.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture) or `shasum -a 256 ~/Library/Application\ Support/CamMixer/cammixer-ponte`.

### VirusTotal validation

| File | Detections | Analysis | Report |
|---|---|---|---|
| CamMixer-Setup-1.3.1.exe | ⛔ 5 of 71 antivirus engines | 2026-11-01 13:21 UTC | [VirusTotal](https://www.virustotal.com/gui/file/b7d0360e8ab96eede386b025cea03cbc9f3416161f20da3ee1b477260451bb58) |
| CamMixer-macOS-1.3.1.zip | ✅ 0 of 67 antivirus engines | 2026-11-01 13:21 UTC | [VirusTotal](https://www.virustotal.com/gui/file/e9829b0cd9e6e55244d2a1e05d7ece4d89c7acbc5f572ca9b6a8a7ee5a88f42e) |
| CamMixer-estensione-1.7.0.zip | not sent: not a binary (extension code), checked only by Defender and ClamAV | | |
| CamMixer.exe (Windows x64) | ✅ 0 of 71 antivirus engines | 2026-11-01 13:26 UTC | [VirusTotal](https://www.virustotal.com/gui/file/4528e012224b39ee61a09d2dff61e11eefd39bfe19edc2f4684eb8141ae87ff6) |
| CamMixerCam.dll (Windows x64) | ✅ 0 of 71 antivirus engines | 2026-11-01 13:26 UTC | [VirusTotal](https://www.virustotal.com/gui/file/f06be897d4ee28f06994009f3acf365d3cfbb702d16cdbdd71467aa4d37a644e) |
| CamMixer.exe (Windows ARM64) | ✅ 0 of 69 antivirus engines | 2026-11-01 13:25 UTC | [VirusTotal](https://www.virustotal.com/gui/file/f1260cc78d6d7c673cefc117c6707657f3bbfd5acb853bdf96b2a56b410a0c58) |
| CamMixerCam.dll (Windows ARM64) | ✅ 0 of 69 antivirus engines | 2026-11-01 13:25 UTC | [VirusTotal](https://www.virustotal.com/gui/file/2eb6ee83ed84eaa907a8323caf94c01ae7d82b2856457a54e66df173ad9b91db) |
| cammixer-ponte (macOS) | ✅ 0 of 63 antivirus engines | 2026-11-01 13:22 UTC | [VirusTotal](https://www.virustotal.com/gui/file/afb44b8f662623acd37db7fecdd53809b99417b001c58a8024ab9e2822ab3d35) |

Detections (below the blocking threshold):

- CamMixer-Setup-1.3.1.exe — APEX: Malicious
- CamMixer-Setup-1.3.1.exe — DeepInstinct: MALICIOUS
- CamMixer-Setup-1.3.1.exe — Elastic: malicious (moderate confidence)
- CamMixer-Setup-1.3.1.exe — Kaspersky: not-a-virus:VHO:RemoteAdmin.MSIL.ConnectWise.gen
- CamMixer-Setup-1.3.1.exe — Skyhigh: BehavesLike.Win32.Dropper.tc

The release is blocked if at least 1 VirusTotal antivirus engines report a file as *malicious*. Only binary files go to the external services; the extension code does not.

### Other checks

| File | Microsoft Defender | ClamAV | MetaDefender | Hybrid Analysis (sandbox) |
|---|---|---|---|---|
| CamMixer-Setup-1.3.1.exe | ✅ clean | ✅ clean | — | — |
| CamMixer-macOS-1.3.1.zip | ✅ clean | ✅ clean | — | — |
| CamMixer-estensione-1.7.0.zip | ✅ clean | ✅ clean | not sent | not sent |
| CamMixer.exe (Windows x64) | ✅ clean | ✅ clean | — | — |
| CamMixerCam.dll (Windows x64) | ✅ clean | ✅ clean | — | — |
| CamMixer.exe (Windows ARM64) | ✅ clean | ✅ clean | — | — |
| CamMixerCam.dll (Windows ARM64) | ✅ clean | ✅ clean | — | — |
| cammixer-ponte (macOS) | ✅ clean | ✅ clean | — | — |

Check of 2026-11-01 13:27 UTC: **NOT passed**. — = service not configured or not planned for that file.

### Built with

- Person cut-out and face tracking: MediaPipe Tasks Vision 1.2.0
- 3D examples: Three.js r187 (0.187.0)
- Windows installer built with Inno Setup 7.1.1

Full version history: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md).
