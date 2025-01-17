<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Headscale untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/headscale)](https://ci-apps.yunohost.org/ci/apps/headscale/)
![Status kerja](https://apps.yunohost.org/badge/state/headscale)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/headscale)

[![Pasang Headscale dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=headscale)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Headscale secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

An open source, self-hosted implementation of the Tailscale control server.

### What is Tailscale

Tailscale is [a modern VPN](https://tailscale.com/) built on top of
[Wireguard](https://www.wireguard.com/).
It [works like an overlay network](https://tailscale.com/blog/how-tailscale-works/)
between the computers of your networks - using
[NAT traversal](https://tailscale.com/blog/how-nat-traversal-works/).

Everything in Tailscale is Open Source, except the GUI clients for proprietary OS
(Windows and macOS/iOS), and the control server.

The control server works as an exchange point of Wireguard public keys for the
nodes in the Tailscale network. It assigns the IP addresses of the clients,
creates the boundaries between each user, enables sharing machines between users,
and exposes the advertised routes of your nodes.

A [Tailscale network (tailnet)](https://tailscale.com/kb/1136/tailnet/) is private
network which Tailscale assigns to a user in terms of private users or an
organisation.

### Design goal

Headscale aims to implement a self-hosted, open source alternative to the Tailscale
control server.
Headscale's goal is to provide self-hosters and hobbyists with an open-source
server they can use for their projects and labs.
It implements a narrow scope, a single Tailnet, suitable for a personal use, or a small
open-source organisation.

### Features


- Full "base" support of Tailscale's features
- Configurable DNS
  - [Split DNS](https://tailscale.com/kb/1054/dns/#using-dns-settings-in-the-admin-console)
- Node registration
  - Single-Sign-On (via Open ID Connect)
  - Pre authenticated key
- Taildrop (File Sharing)
- [Access control lists](https://tailscale.com/kb/1018/acls/)
- [MagicDNS](https://tailscale.com/kb/1081/magicdns)
- Support for multiple IP ranges in the tailnet
- Dual stack (IPv4 and IPv6)
- Routing advertising (including exit nodes)
- Ephemeral nodes
- Embedded [DERP server](https://tailscale.com/blog/how-tailscale-works/#encrypted-tcp-relays-derp)

*from Headscale's README. See Links section below.*


**Versi terkirim:** 0.24.0~ynh1
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://headscale.net/>
- Dokumentasi pengguna resmi: <https://tailscale.com/kb/>
- Dokumentasi admin resmi: <https://headscale.net/>
- Depot kode aplikasi hulu: <https://github.com/juanfont/headscale>
- Gudang YunoHost: <https://apps.yunohost.org/app/headscale>
- Laporkan bug: <https://github.com/YunoHost-Apps/headscale_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/headscale_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
atau
sudo yunohost app upgrade headscale -u https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
