# BoluWrt packages feed

## Description

This is the BoluWrt "packages"-feed containing community-maintained build scripts, options and patches for applications, modules and libraries used within BoluWrt.

Installation of pre-built packages is handled directly by the **opkg** utility within your running BoluWrt system or by using the [BoluWrt SDK](http://wiki.openwrt.org/doc/howto/obtain.firmware.sdk) on a build system.

## Usage

This repository is intended to be layered on-top of an BoluWrt buildroot. If you do not have an BoluWrt buildroot installed, see the documentation at: [BoluWrt Buildroot – Installation](http://wiki.openwrt.org/doc/howto/buildroot.exigence) on the BoluWrt support site.

This feed is enabled by default. To install all its package definitions, run:
```
./scripts/feeds update packages
./scripts/feeds install -a -p packages
```

## License

See [LICENSE](LICENSE) file.
 
## Package Guidelines

See [CONTRIBUTING.md](CONTRIBUTING.md) file.

