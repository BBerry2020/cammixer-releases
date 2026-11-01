Windows 11 installer (`CamMixer-Setup-1.8.0.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.8.0.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.12.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.8.0.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 6.0 MB | `9adecef25338ba3d55adfa5ee438b28039e5c389326b5164dd1f36797eaf94c7` |
| **CamMixer-macOS-1.8.0.zip**<br>macOS program (with OBS) | 176 KB | `72ebf8c394f9687d8440bf79090590754a3c14904c222f800b5cbd5f819d7090` |
| **CamMixer-estensione-1.12.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.6 MB | `fdbfcaca7947eb2225bdb7f9ace58143e237552c6fbf9129f04fd985b6759b79` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 298 KB | `5226bceacac2db81cbcc82ecaa68acb739d3bf76d86adc49b0c1e10998ddf810` |
| Windows x64 · system webcam (installed as CamMixerCam-1.8.0.dll) | 210 KB | `ce2f8cbfc922b684429acc693463447cb7ed5a01ceaf6ad4315fdea8122ac38b` |
| Windows ARM64 · CamMixer.exe | 286 KB | `d73c00a24f2763c9495dd3ced07055c910fcb8c6beef7050ecbb03506a27c4b0` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.8.0.dll) | 200 KB | `e8eb95dd5ae8473a39842f86ff4303b2a112f6b7a572bc84ec076e741a988bfb` |
| macOS (universal) · cammixer-ponte | 568 KB | `60124e7609b66dc0882eb4e65a69f3a09e067db40f661ec5401648a095e35088` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.8.0.exe | `1efd359eb19cc50f95be9dd8de7c6b34782d112f` | `d5c998fb21067382f2a96b4e085d2563` |
| CamMixer-macOS-1.8.0.zip | `874b82aa69d1952743bb6321e324326cb291f367` | `7359222f03cc59de444b3b0e5f247020` |
| CamMixer-estensione-1.12.0.zip | `6a437bbe4c5c3c1d83aee62b3d5885405de71983` | `e62e5d10a52e653b4ebc13679aaebefd` |
| Windows x64 · CamMixer.exe | `4b6d2173911d05ee2600edad57616e7277d85b12` | `687df39af80cf1f7e077d40d4ed8d9c2` |
| Windows x64 · system webcam (installed as CamMixerCam-1.8.0.dll) | `142c5934f0ed854c46154de6fc57352b6452dbae` | `afdb7a18a8f6979200c2937300055273` |
| Windows ARM64 · CamMixer.exe | `1f0edeb0d50156cde40f811b980fcdeae3940ccb` | `6b3df00230e7699914feaa3c784fef80` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.8.0.dll) | `46bd9868fb4980ec60707eb16b5bf1514cfc8e11` | `6d657ed394e06a75c64c733985f64b60` |
| macOS (universal) · cammixer-ponte | `e8386d9a3c2b3d3739aba602fe5e631f209099d5` | `1292b9e15bf286090e49078c1c2b1330` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.8.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.8.0.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

### Built with

- MediaPipe Tasks Vision 1.2.0
- Three.js r187 (0.187.0)
- Inno Setup 7.1.1
- Included in the Windows installer, optional: VB-CABLE Virtual Audio Device Driver Pack 45 (Donationware (VB-Audio Software), distribution with other applications allowed with attribution; official package `VBCABLE_Driver_Pack45.zip`, SHA-256 `b950e39f01af1d04ea623c8f6d8eb9b6ea5c477c637295fabf20631c85116bfb`). The origin of VB-CABLE : www.vb-cable.com. VB-CABLE is a donationware, all participations are welcome.

### Supply-chain checks

- Third-party code register in order: every external file is registered with version, licence and SHA-256, and the files included are identical to the official npm packages (integrity checked against the npm registry).
- Known vulnerabilities (npm advisories, OSV.dev, GitHub Advisory Database): none.
- Libraries and build tools up to date: actions/checkout v7.0.1 (latest version); actions/download-artifact v8.0.2 (latest version); actions/setup-python v7.1.0 (latest version); actions/upload-artifact v7.0.2 (latest version); Inno Setup 7.1.1 (latest version); MediaPipe Tasks Vision 1.2.0 (latest version); Three.js 0.187.0 (latest version); VB-CABLE Virtual Audio Device Driver Pack 45 (latest version).
- Build tools pinned: GitHub Actions by commit SHA, Inno Setup by version, SHA-256 and digital signature; VB-CABLE by package number, SHA-256 and digital signatures of its setup and driver catalogs.

The installer is not code-signed and releases are not checked with antivirus services.
Notes generated on 2026-11-01 21:35 UTC.
