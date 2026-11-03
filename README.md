<!-- LOGO -->
<h1>
<p align="center">
  <img src="https://avatars.githubusercontent.com/u/89791739?s=200&v=4" alt="smbCloud Logo" width="128">
  <br>smbCloud Homebrew Tap
</h1>
  <p align="center">
    smbCloud's devtools from the terminal.
    <br />
    <br />
    <a href="https://smbcloud.xyz/">Website</a>
    ·
    <a href="https://github.com/smbcloudXYZ/smbcloud-cli">smbCloud CLI</a>
    ·
    <a href="https://github.com/smbcloudXYZ/smbcloud-ascapi">smbcloud-ascapi</a>
    ·
    <a href="https://docs.smbcloud.xyz/developer/cli">Documentation</a>
  </p>
  <p align="center">
    <a href="https://github.com/smbcloudXYZ/homebrew-tap"><img alt="Homebrew" src="https://img.shields.io/badge/homebrew-tap-orange?logo=homebrew"></a>
    <a href="https://github.com/smbcloudXYZ/homebrew-tap/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/smbcloudXYZ/homebrew-tap"></a>
  </p>
</p>

## Formulae

| Formula | Binary | What it is |
| --- | --- | --- |
| `cli` | `smb` | smbCloud CLI: Deploy, Auth, Mail, GresIQ |
| `ascapi` | `asc` | App Store Connect, Google Play, Microsoft Store and AppGallery CLI and MCP server |
| `proses` | `proses` | Process manager: start, supervise, restart and log an app from one command |

## Install

```bash
brew tap smbcloudXYZ/tap && brew trust --tap smbcloudXYZ/tap
brew install cli
brew install ascapi
brew install proses
```

## Upgrade

```bash
brew upgrade <formula>
```

## Issues

Report problems in each tool's own repository:
[smbcloud-cli](https://github.com/smbcloudXYZ/smbcloud-cli/issues),
[smbcloud-ascapi](https://github.com/smbcloudXYZ/smbcloud-ascapi/issues) and
[proses](https://github.com/smbcloudXYZ/proses/issues).

## License

Each formula declares its own license: Apache-2.0 for `cli` and `ascapi`, MIT for `proses`.

## Copyright

© 2026 Seto Elkahfi ([smbCloud](https://smbcloud.xyz)). Distributed by [Splitfire AB](https://5mb.app).
