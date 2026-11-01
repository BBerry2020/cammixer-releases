Windows 11 installer (`CamMixer-Setup-1.6.0.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.6.0.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.10.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.6.0.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 5.3 MB | `ddfd91715b751fd4942a1db8c75ba270ced966e553b3a100cbaacffe766883b0` |
| **CamMixer-macOS-1.6.0.zip**<br>macOS program (with OBS) | 176 KB | `9ac0024096338f3b77b2e540baeac7ea8770819061b5bc6eedd72e1f9ff04732` |
| **CamMixer-estensione-1.10.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.6 MB | `141adc902b21cbc10c01cb73e3752026e184c7a75998d57faeb6dfc7976872ba` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 290 KB | `237f9b36bcd1886d9280f28deab62a48d1a5433701c711d59bc86b554e9c34b1` |
| Windows x64 · system webcam (installed as CamMixerCam-1.6.0.dll) | 210 KB | `2689b4348fcaf4ba3a043371b4ef1aebb4f9f6c8223541a5e204e9ff7a605b91` |
| Windows ARM64 · CamMixer.exe | 280 KB | `1527a44fe5ec0800ef233ca23601eef1917eb11fda1c66b619f4349ce9dfad39` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.6.0.dll) | 200 KB | `45db1a681e1666a688aa6582f8a276ba4ad755fdeadabbed743217ff09674df4` |
| macOS (universal) · cammixer-ponte | 568 KB | `6f97162e1bb6f8b3fe96e9efbf493e059b6b50ad646190f7772689db729101bb` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.6.0.exe | `530c78213bb564b3700a48dcc39e774ca3ffd1ea` | `10d495c9a1fdbc6a80bce4248b3b9a6b` |
| CamMixer-macOS-1.6.0.zip | `ad0e915d3638f9014147bb5e386522727446650d` | `c720c71fd2f32ef6f02b9d0c5dcd9ca5` |
| CamMixer-estensione-1.10.0.zip | `8f86f67e86864d4764319ed4b5f99c62a8a4287b` | `4fa03dbb59884abd2a391697d1c7d2eb` |
| Windows x64 · CamMixer.exe | `92d033f1451cc4a1b1568b916d1cc85981e5deb4` | `8023218e5e1dbea2a81c6c4ed742c3f7` |
| Windows x64 · system webcam (installed as CamMixerCam-1.6.0.dll) | `0135297eb03d13c60d3760ae2784c42a9623b42f` | `9787b32c944d568fb841b73c69bd25b3` |
| Windows ARM64 · CamMixer.exe | `08f69428d4ddd73220d4e098c5382665355d06da` | `26c1f4f8a2c514133257dbdb43005317` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.6.0.dll) | `350ca14fdefb1d82ff2bfd190fed472584c32169` | `68f03822418af815bdaadc88a6abece1` |
| macOS (universal) · cammixer-ponte | `01e7f4c540a0d6cfa2c29d8d6459e0f87deac2c6` | `2b5af20ff170393cf80d77d20bc0db81` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.6.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.6.0.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

### Built with

- MediaPipe Tasks Vision 1.2.0
- Three.js r187 (0.187.0)
- Inno Setup 7.1.1

### Supply-chain checks

- Third-party code register in order: every external file is registered with version, licence and SHA-256, and the files included are identical to the official npm packages (integrity checked against the npm registry).
- Known vulnerabilities (npm advisories, OSV.dev, GitHub Advisory Database): none.
- Libraries and build tools up to date: actions/checkout v7.0.1 (latest version); actions/download-artifact v8.0.2 (latest version); actions/setup-python v7.1.0 (latest version); actions/upload-artifact v7.0.2 (latest version); Inno Setup 7.1.1 (latest version); MediaPipe Tasks Vision 1.2.0 (latest version); Three.js 0.187.0 (latest version).
- Build tools pinned: GitHub Actions by commit SHA, Inno Setup by version, SHA-256 and digital signature.

The installer is not code-signed and releases are not checked with antivirus services.
Notes generated on 2026-11-01 18:53 UTC.
