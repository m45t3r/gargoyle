# Gargoyle's m45t3r builds

## Gargoyle including extra features/plugins for routers with 4MB Flash

### Introduction

This repository focus in creating a full-featured version of current trunk from
[Gargoyle Firmware](https://www.gargoyle-router.com/) for routers with 4MB of
Flash and no USB support. It introduces a `m45t3r` profile, that is based on
`default`, however embed various plugins in the image.

**WARNING:** this repository will be rebased every time there is a change in
[upstream](https://github.com/ericpaulbishop/gargoyle).

### Extra features (compared to official 1.9.1 image)

- Up-to-date 1.9 branch;
- Re-added miniupnpd;
- Small plugins/themes integrated in the image (for `m45t3r` target only!);
    * Plugins included: plugin-gargoyle-adblock, plugin-gargoyle-initd,
      plugin-gargoyle-logread, plugin-gargoyle-ping-watchdog,
      plugin-gargoyle-spectrum-analyzer, plugin-gargoyle-webshell,
      plugin-gargoyle-wifi-schedule.
    * Themes included: plugin-gargoyle-theme-by-matei,
      plugin-gargoyle-theme-dark-one, plugin-gargoyle-theme-green,
      plugin-gargoyle-theme-light, plugin-gargoyle-theme-xeye.
