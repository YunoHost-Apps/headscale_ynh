Tweak Headscale's configuration in `__INSTALL_DIR__/config.yaml`.

All features might not be compatible with YunoHost.
Feel free to experiment and report your use cases in YunoHost's forum and chatrooms!

Some technical notes:
- [Internal DERP server](https://tailscale.com/blog/how-tailscale-works/#encrypted-tcp-relays-derp) is not enabled
- The server is allowed to use the [DERP servers operated by Tailscale](https://controlplane.tailscale.com/derpmap/default)
- The database used to store user and nodes information is SQLite. It should be fine for YunoHost's current small-scale self-hosting mindset.
- Headscale will push DNS servers to its clients. The configuration includes FDN's open resolvers. ([French Data Network](https://www.fdn.fr/actions/dns/), associative ISP)

To create users and connect clients, refer to Headscale's documentation.
To call Headscale's program, open a dedicated shell with `yunohost app shell __APP__` then call it with `./headscale -c config.yaml`, followed by its parameters.
