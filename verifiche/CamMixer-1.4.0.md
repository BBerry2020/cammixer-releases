Windows 11 installer (`CamMixer-Setup-1.4.0.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.4.0.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.8.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.4.0.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 5.3 MB | `59cd1b73507f56b7b94d456263a4cdefe59920b9bd027ea82d29939b3054a1ab` |
| **CamMixer-macOS-1.4.0.zip**<br>macOS program (with OBS) | 169 KB | `1fc8249c899d765588646433e156ef77c82cafd662e9bf3b9ad967944c020146` |
| **CamMixer-estensione-1.8.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.5 MB | `bbc11dbfebd76d80a0d0361f5c99d86b1c7f00951de80dba1b708095e36f8485` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 286 KB | `f773bf6a6a5a5a6b39ed2dbe4f7334f4eec9943e720549b3daf292629da4ebf8` |
| Windows x64 · system webcam (installed as CamMixerCam-1.4.0.dll) | 197 KB | `67d6794f942a5ef986ebbd220dff571b7aff643342a938630e1c409c551e0bf8` |
| Windows ARM64 · CamMixer.exe | 277 KB | `484980a51c371165540ce5b235fbcbcafe2672c7121e83921a7a6cfc898484ff` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.4.0.dll) | 190 KB | `dbe672892cc0193412041d0a646b3d961d9665eec9ee580e105c91beb536f4e4` |
| macOS (universal) · cammixer-ponte | 533 KB | `575846217bbc5d9e33707b9a0ae6656b3a7523040be00a4bc2071670956b4739` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.4.0.exe | `df69132d33f4b05bfb3dd74fbaa03eebff23d0cb` | `6fa21f34048cf37febf9972bbbe342ed` |
| CamMixer-macOS-1.4.0.zip | `c957213a94fce15c53a0bd75a77c5bd0b9176c3b` | `0914272a328079f4b52dab51a6917720` |
| CamMixer-estensione-1.8.0.zip | `5f9a7c1d197908e0873f40d7b9b4789590bafd66` | `8380f0a34f1e337cbd606184b56b10aa` |
| Windows x64 · CamMixer.exe | `3592010ec11b5593a9650a0f327367a096760898` | `fa1867cf69440f8f47bfe64c7db8fcf1` |
| Windows x64 · system webcam (installed as CamMixerCam-1.4.0.dll) | `837f7f0a254e718ab19936c66648b2464b9c41de` | `63ce29250f7a0c61e45c0a59efbd14ae` |
| Windows ARM64 · CamMixer.exe | `592cd3ecb9940d6bfa856659246378c7101c34d3` | `8a362701fc55458314a3b6ef54b856dc` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.4.0.dll) | `e0728fe7c49c6bd2859e892e9d042563a824f918` | `bb57dc6b758a228ce94297ba76f20164` |
| macOS (universal) · cammixer-ponte | `54c792ef3113324a9daa09e79b785c2ef13f00f8` | `abbce1d50fa646abc268ff8593391b60` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.4.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.4.0.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

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
Notes generated on 2026-11-01 15:05 UTC.
