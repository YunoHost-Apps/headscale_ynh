<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Headscale для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/headscale)](https://ci-apps.yunohost.org/ci/apps/headscale/)
![Состояние работы](https://apps.yunohost.org/badge/state/headscale)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/headscale)

[![Установите Headscale с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=headscale)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Headscale быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

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


**Поставляемая версия:** 0.24.2~ynh2
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://headscale.net/>
- Официальная документация пользователя: <https://tailscale.com/kb/>
- Официальная документация администратора: <https://headscale.net/>
- Репозиторий кода главной ветки приложения: <https://github.com/juanfont/headscale>
- Магазин YunoHost: <https://apps.yunohost.org/app/headscale>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/headscale_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/headscale_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
или
sudo yunohost app upgrade headscale -u https://github.com/YunoHost-Apps/headscale_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
