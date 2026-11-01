Windows 11 installer (`CamMixer-Setup-1.5.0.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.5.0.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.9.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.5.0.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 5.3 MB | `359b3925f0058e602bfbcbafece2dbe30a6d9928ffd533b2a8272821af8744b7` |
| **CamMixer-macOS-1.5.0.zip**<br>macOS program (with OBS) | 169 KB | `afa0852a78f238b092ff132aa8a02e9a6dfd3426b504b3d20b662379d679bb57` |
| **CamMixer-estensione-1.9.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.5 MB | `c9c122137cd6da7821965852c486b6d553f11cc762ae25af9f3b7fe20c0fc5a8` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 286 KB | `1d394fd28f3dd08c450562f281e5ae42502191574ad209e8510be2ab4d57a89f` |
| Windows x64 · system webcam (installed as CamMixerCam-1.5.0.dll) | 197 KB | `6b7e17358710b1a0f0efbbe7c1a6c347c9dbc933c4404675c38fc8868471d783` |
| Windows ARM64 · CamMixer.exe | 277 KB | `aa7b4cc88fdd4cbfd026d31f9ec058ff4391893ec0385afe1d4b5a0ae2d1eb6c` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.5.0.dll) | 190 KB | `36260479a59fe8bea4ba5328c1f9c2b01d7063eec24c621d42e7f68e37b5f4cf` |
| macOS (universal) · cammixer-ponte | 533 KB | `6da498e693af0feeaa2b5934e395f2e2220cee34815772e334ee72326ec4e9bd` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.5.0.exe | `24f0497c49beb6aaaabc561e1c71496cd3ea01a2` | `61d0d5c9eedf3a782e2355514479e997` |
| CamMixer-macOS-1.5.0.zip | `949a2549fc390f4576a14554e6e4b69d2e4ef696` | `bd1755743d11ffef04f872a7fc5ec181` |
| CamMixer-estensione-1.9.0.zip | `e2289f7bc41926b61e6cd1fce7ef03d5b52ba636` | `485604314f943d45f7c242d168924cba` |
| Windows x64 · CamMixer.exe | `b946294f721b961e381334ba2d3857dc169852e9` | `68e3bfa7d1757aba5884aab6de7727f0` |
| Windows x64 · system webcam (installed as CamMixerCam-1.5.0.dll) | `c89bc74a08e531e4c07f228b3512739b4e6b61bc` | `23a351715470da59088cbc6c4dc76cab` |
| Windows ARM64 · CamMixer.exe | `e5a8143a04b9ba859cc04dd901f3c2f924a0eeb2` | `3e2772b3326bd4845fb1a579d8ef2880` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.5.0.dll) | `10b52f2b21a90ecb589970f6a8eb3d03361fb783` | `df3d3accacd59ec2f34804e5a4c32529` |
| macOS (universal) · cammixer-ponte | `d77563a122fe510bad824f99f6fa9f1e274ab496` | `0220958e63813743ed1e901abb79a88d` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.5.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.5.0.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

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
Notes generated on 2026-11-01 16:22 UTC.
