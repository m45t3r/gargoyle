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

### Supported models

"Supported" here means that the router listed below seems to have a hardware similar to **TL-WR941ND**, that is the
only router that I have to test these builds. It not means that I can fix the problems of your router, unless I can
reproduce the same issue on my hardware.

* TL-MR10U
* TL-MR11U
* TL-MR13U
* TL-MR3020
* TL-MR3040
* TL-MR3220
* TL-MR3420
* TL-WA701N
* TL-WA701ND
* TL-WA730REV1
* TL-WA750RE
* TL-WA7510N
* TL-WA801ND
* TL-WA830RE
* TL-WA850RE
* TL-WA860RE
* TL-WA901ND
* TL-WR703N
* TL-WR720N
* TL-WR740N
* TL-WR741ND
* TL-WR743ND
* TL-WR841ND
* TL-WR841N
* TL-WR941ND

### Known issues

The default link for `Plugin Sources` (http://www.gargoyle-router.com/packages/gargoyle-1.8/ar71xx/nousb) does not
work. This is proposital, since the rest of Gargoyle plugins shouldn't work in this build anyway. However, if you
want to try your luck (specially if you want to download translations, that should still work), simple add the
official link for default images: http://www.gargoyle-router.com/packages/gargoyle-1.8/ar71xx/default
