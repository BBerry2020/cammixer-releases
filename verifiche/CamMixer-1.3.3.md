Windows 11 installer (`CamMixer-Setup-1.3.3.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.3.3.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.7.2.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.3.3.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 5.3 MB | `c9560a8783f4a341bc5a16d121a76064ffacfb42727684168936a31602d2df61` |
| **CamMixer-macOS-1.3.3.zip**<br>macOS program (with OBS) | 169 KB | `368cd84e61b47be8d060a0e58f8d2d5f39cfd5ea9a835e01d766ee5aa0fd8475` |
| **CamMixer-estensione-1.7.2.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.5 MB | `42155b7bb139fc013c55352d8740398cb43e4602aea329e85c127af1f8415f85` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 286 KB | `ba4a65aeabbbb8d7fada48949b221760241604e959a486a3d6dba94065a92d01` |
| Windows x64 · system webcam (installed as CamMixerCam-1.3.3.dll) | 197 KB | `7c519145dd5aedbf5535facada9f799054695f2e0079b4951c17e476e7a85997` |
| Windows ARM64 · CamMixer.exe | 277 KB | `db2de92d73487bdc3ecb29b3717c30d541b8d46977d1eaf180d567a3caf913ac` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.3.3.dll) | 190 KB | `c81a59c619c28e7a08cd62b29cc52f667e081f19d3edb12abbf508339d79f194` |
| macOS (universal) · cammixer-ponte | 533 KB | `8c6774c2a4ac46cedfa096073eb9cfcc102a3a14d28fbed1ccc3687724ac596f` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.3.3.exe | `067d4091479aa8ade9ea36c42256f559ef239c23` | `75005157a302044d51b70becdf65569c` |
| CamMixer-macOS-1.3.3.zip | `40ad46bdfc035e67457c037ce94d9157a98b257c` | `061059e6aefbf803605e6ca3eefd6d2f` |
| CamMixer-estensione-1.7.2.zip | `1015fb5d4d527847d5af22bcfe0ebdecaae9f578` | `c11ba5728fe44e940fc3a57189c9f448` |
| Windows x64 · CamMixer.exe | `96f63e3a6e7b594ecc3cf1b04fab985a2f1456bd` | `a91b6721299c34fde92ac56ac1d4498a` |
| Windows x64 · system webcam (installed as CamMixerCam-1.3.3.dll) | `39b3dd297c466e08d9f51a7d16af7bf55a383af5` | `18ba8908dce5cac574d5e897e78abfd9` |
| Windows ARM64 · CamMixer.exe | `2dee050d8001a84bae4908ccf563664a59f29121` | `6ebfd3f69ca96aa99df500fd759b078a` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.3.3.dll) | `a7ffa8059684e349f40168ddb4d97caa75ea1f57` | `7601d8102840c5bc0a1a11a513ece989` |
| macOS (universal) · cammixer-ponte | `4f4d90951dbfd2b1e473db9cd58165bb1d14abf2` | `51db02a2bbf8126ba4ef88fff15e2930` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.3.3.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.3.3.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

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
Notes generated on 2026-11-01 14:24 UTC.
