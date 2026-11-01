Windows 11 installer (`CamMixer-Setup-1.7.0.exe`, it also contains the extension) and macOS program to use with OBS (`CamMixer-macOS-1.7.0.zip`).
Extension for Edge and Chrome to load by hand (`CamMixer-estensione-1.11.0.zip`): only needed without the Windows installer.

All releases: https://github.com/BBerry2020/cammixer-releases · What changed: [CHANGELOG.md](https://github.com/BBerry2020/cammixer-releases/blob/main/CHANGELOG.md)

### Hashes

| File | Size | SHA-256 |
|---|---:|---|
| **CamMixer-Setup-1.7.0.exe**<br>Windows 11 installer (x64 and ARM64; it also contains the extension) | 5.3 MB | `aab17d9060e0668bc935e44b310b49a4123aabad2d6f0132c1d6e3657c319a69` |
| **CamMixer-macOS-1.7.0.zip**<br>macOS program (with OBS) | 176 KB | `71ade8508374ec1aa678c6b665d7bc98c2cb13eac20151074256cc1c6312f9b3` |
| **CamMixer-estensione-1.11.0.zip**<br>Extension for Edge and Chrome (also inside the Windows installer) | 4.6 MB | `7d07bf226cc6f7796b1c7951e6c734e1412f259415560fd9456524fef76a0972` |

Programs inside, identical to the files that end up on disk:

| Program | Size | SHA-256 |
|---|---:|---|
| Windows x64 · CamMixer.exe | 298 KB | `bda51d310d59e1d161d7f15b375b6036392dbc938f95b8b1b1220d6f86fc9088` |
| Windows x64 · system webcam (installed as CamMixerCam-1.7.0.dll) | 210 KB | `3d49e7ca25eec7873e9182a6e22d58761e8551a2228b9062c498b18a1bfda55a` |
| Windows ARM64 · CamMixer.exe | 286 KB | `08c39e91b4de7de8dcaad8ae5cbda3dbed225ea7d1bebd73df97b3b16df5249c` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.7.0.dll) | 200 KB | `f256348fdd11445ccc5c9c9798e919fffa06504333d54e0cb06d55328d9c7216` |
| macOS (universal) · cammixer-ponte | 568 KB | `768163c82ba7dc1d414d0a6b550b22327d0267704e9422c30b4265aaa60b65df` |

<details><summary>SHA-1 and MD5</summary>

| File | SHA-1 | MD5 |
|---|---|---|
| CamMixer-Setup-1.7.0.exe | `4f8238892f01a107d4f081725b7079c19399748c` | `eecf6b137d36bec28e072c6ec627ed02` |
| CamMixer-macOS-1.7.0.zip | `1202bfb5ac54330e25030ededa3204158d1121e6` | `86687ab1b0fc0795e0804bda05b294ac` |
| CamMixer-estensione-1.11.0.zip | `da1013ba1cf8915df35b3b9541b9b277202fd19e` | `883fc9f91f3ed2fdab9ca0a266e3beff` |
| Windows x64 · CamMixer.exe | `35f7cd92d3505e9b68e6b6da392fa88094297ff9` | `3a4eabf9d241474b256a652455a7dadc` |
| Windows x64 · system webcam (installed as CamMixerCam-1.7.0.dll) | `cddf3b501fca7a008d1fc56f6250817281afe9a2` | `89c2909e76a4e9cc98d7f04afae8aa7b` |
| Windows ARM64 · CamMixer.exe | `baee4cb8457f900ac41021ef13d88e65760ad4f5` | `b8f408ed774646d8481af986a879466b` |
| Windows ARM64 · system webcam (installed as CamMixerCam-1.7.0.dll) | `4931b1767f91059aec9890faa4cf6e2b88267bff` | `4dcb2a29458454908727562903ecbb6a` |
| macOS (universal) · cammixer-ponte | `4eca1a61d76e113037b1073bd66f50415488ea8a` | `0bcfdcf6046c6e3d3b765b2817aa151e` |

</details>

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.7.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.7.0.zip`. After installing: `Get-FileHash "C:\Program Files\CamMixer\CamMixer.exe"` (compare it with the row of your architecture).

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
Notes generated on 2026-11-01 21:02 UTC.
