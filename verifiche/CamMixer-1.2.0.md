Windows 11 installer (`CamMixer-Setup-1.2.0.exe`, it also contains the extension), macOS program to use with OBS (`CamMixer-macOS-1.2.0.zip`) and extension for Edge and Chrome (`CamMixer-estensione-1.6.0.zip`).

All releases: https://github.com/BBerry2020/cammixer-releases

> **Warning:** this version was published on request **before the antivirus check was complete**; the result, received afterwards, is at the bottom.

### Hashes

| File | SHA-256 | SHA-1 | MD5 |
|---|---|---|---|
| CamMixer-Setup-1.2.0.exe | `45987118f4bf0f59cfb9d3bb44f2e37244bbbf3bd539937abd141984bf9ef09c` | `c282dc180d32b80d428fa5e598b27e75e127dca1` | `72ccbc6f34ba2018b21ba1173ad56dfa` |
| CamMixer-macOS-1.2.0.zip | `9ea1557760690b6ec601bf6ec0d0422db3442ff7ea97d793d17d937af18da221` | `c81ab30568f9c2a8254b0c471d642667166d365e` | `0fd32773abf0ce71adfb408ffd44993b` |
| CamMixer-estensione-1.6.0.zip | `a85e9de010800d38bc93ec09428953b3255907115d7249be46374b7560d5bcb1` | `b43c12f4eeafdb863a486f1d2b86dc8e62254092` | `cc925d4a6e89b9a985dbb2f13a21c705` |

To check a downloaded file: in PowerShell `Get-FileHash .\CamMixer-Setup-1.2.0.exe`; on the Mac `shasum -a 256 CamMixer-macOS-1.2.0.zip`.

### Antivirus check (after publishing, 1 November 2026)

| File | Microsoft Defender · ClamAV | VirusTotal | Report |
|---|---|---|---|
| CamMixer-Setup-1.2.0.exe | ✅ clean · ✅ clean | ⚠️ **3 engines out of about 70**: APEX (Malicious), DeepInstinct (MALICIOUS), Skyhigh (BehavesLike.Win32.ObfuscatedPoly) | [VirusTotal](https://www.virustotal.com/gui/file/45987118f4bf0f59cfb9d3bb44f2e37244bbbf3bd539937abd141984bf9ef09c) |
| CamMixer-macOS-1.2.0.zip | ✅ clean · ✅ clean | ✅ no detections | [VirusTotal](https://www.virustotal.com/gui/file/9ea1557760690b6ec601bf6ec0d0422db3442ff7ea97d793d17d937af18da221) |
| cammixer-ponte (macOS, inside the zip) | ✅ clean · ✅ clean | ✅ no detections | [VirusTotal](https://www.virustotal.com/gui/file/f1396e39a744f8a662624421bcbe93f76f64b2650d41bd264e8aeccc6e7817b4) |
| CamMixer-estensione-1.6.0.zip | ✅ clean · ✅ clean | not sent: it is source code, not a binary | — |

The three detections on the installer come from heuristic and "machine learning" engines, which judge a file by similarity; no signature-based engine (Microsoft, Kaspersky, ESET, Bitdefender…) flags it. They are typical of new, unsigned installers. Under CamMixer's rule (blocked from 1 engine) **the check is not passed**: the version was published anyway, on request, to test it. On an almost identical build Microsoft had also reported `Trojan:Win32/Wacatac.C!ml` (machine-learning detection): if Windows blocks the installer, this is it.
