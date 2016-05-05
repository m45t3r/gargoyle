# Gargoyle 1.8.X_m

## Gargoyle-BB including backports/extra features

### Introduction

This repository focus in creating a full-featured version of [Gargoyle Firmware](https://www.gargoyle-router.com/)
1.8 ([Barrier Breaker branch](https://git.openwrt.org/?p=14.07/openwrt.git;a=summary)) for routers with 4MB of Flash.

Gargoyle Firmware from [current trunk](https://github.com/ericpaulbishop/gargoyle/tree/master) (based on
[Chaos Calmer](https://git.openwrt.org/?p=15.05/openwrt.git;a=summary)) is becoming too big to fit in routers with 4MB
of Flash. So I started to backport some fixes from current trunk and do some fixes of my own (that will be pushed to
upstream). At the same time, I created a special target only for ath9k routers with small amount of Flash and no USB
support (called `nousb`). So for people that own TP-Link TL-WR{7xx,8xx,9xx} or TL-WA{7xx,8xx,9xx}, this may be your
Gargoyle Firmware version.

### Extra features (compared to official 1.8.1 image)

- Up-to-date 1.8 branch (only small fixes);
- Up-to-date BB branch (mostly security fixes related to openssl/samba, that aren't included by default anyway);
- All plugins/themes smaller than 10KB integrated in the image;
    * Plugins included: plugin-gargoyle-adblock, plugin-gargoyle-initd, plugin-gargoyle-logread,
      plugin-gargoyle-ping-watchdog, plugin-gargoyle-webshell, plugin-gargoyle-wifi-schedule.
    * Themes included: plugin-gargoyle-theme-by-matei, plugin-gargoyle-theme-dark-one, plugin-gargoyle-theme-green,
      plugin-gargoyle-theme-light, plugin-gargoyle-theme-xeye.
- Removed unecessary bloat (debug support from Kernel, USB modules, strip kernel headers);
    * 480KB `/overlay` partition (vs. 360KB from 1.8.1);
- Backport fixes from current Gargoyle Firmware trunk (switch to Git, HTML5, small fixes...);
- Allow user to select country for regulatory purposes (See: https://github.com/ericpaulbishop/gargoyle/pull/469,
  reject by upstream);
- Small bug fixes not presented yet upstream.
    * Update HTTPS certs to SHA256;
    * Disable IPv6 on WAN interface (Gargoyle does not have IPv6 support anyway, and this seems to cause issues).
