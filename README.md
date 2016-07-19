# Gargoyle 1.9.X_m

## Gargoyle-CC including extra features for routers with 4MB Flash

### Introduction

This repository focus in creating a full-featured version of [Gargoyle Firmware](https://www.gargoyle-router.com/)
1.8 ([Chaos Calmer branch](https://git.openwrt.org/?p=15.05/openwrt.git;a=summary)) for routers with 4MB of Flash and
no USB support.

Gargoyle Firmware from is becoming too big to fit in routers with 4MB of Flash. So I started to build all functionality
that I could fit in the image.

**WARNING:** this repository will be rebased everytime there is a change in [upstream](https://github.com/ericpaulbishop/gargoyle).

### Extra features (compared to official 1.9.1 image)

- Up-to-date 1.9 branch (only small fixes);
- Small plugins/themes integrated in the image (for `nousb` target only!);
    * Plugins included: plugin-gargoyle-adblock, plugin-gargoyle-initd, plugin-gargoyle-logread,
      plugin-gargoyle-ping-watchdog, plugin-gargoyle-spectrum-analyzer, plugin-gargoyle-webshell,
      plugin-gargoyle-wifi-schedule.
    * Themes included: plugin-gargoyle-theme-by-matei, plugin-gargoyle-theme-dark-one, plugin-gargoyle-theme-green,
      plugin-gargoyle-theme-light, plugin-gargoyle-theme-xeye.
- Removed unecessary bloat (debug support from Kernel, USB modules, strip kernel headers, strip libraries);
    * Thanks to the stripped kernel headers and libraries, there is **no** support for external packages installed via
      opkg/gpkg (but since the /overlay is only 320KB and there is no USB support in those routers, this should not
      make any difference anyway);
- Allow user to select country for regulatory purposes (See: https://github.com/ericpaulbishop/gargoyle/pull/469,
  reject by upstream);

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
