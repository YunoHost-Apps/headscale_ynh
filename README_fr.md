<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Headscale pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/headscale)](https://ci-apps.yunohost.org/ci/apps/headscale/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/headscale)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/headscale)

[![Installer Headscale avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=headscale)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Headscale rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

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


**Version incluse :** 0.24.3~ynh1
## Documentations et ressources

- Site officiel de l’app : <https://headscale.net/>
- Documentation officielle utilisateur : <https://tailscale.com/kb/>
- Documentation officielle de l’admin : <https://headscale.net/>
- Dépôt de code officiel de l’app : <https://github.com/juanfont/headscale>
- YunoHost Store : <https://apps.yunohost.org/app/headscale>
- Signaler un bug : <https://github.com/YunoHost-Apps/headscale_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/headscale_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
ou
sudo yunohost app upgrade headscale -u https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
