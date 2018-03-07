# ~/.dotfiles

There's no place like home.

These dotfiles are managed by [fresh].

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

## Requirements/Suggestions

This repository configures many packages, all of which should be installed by
[lewiseason/infrastructure](https://github.com/lewiseason/infrastructure).
Just make sure `curl` is installed.

## Things to do

- [ ] Power manager? (xfce4-power-manager?)
- [ ] Clipboard manager
- [ ] suspend (`dbus-send --print-reply --system --dest=org.freedesktop.login1 /org/freedesktop/login1 org.freedesktop.login1.Manager.Suspend boolean:true`). Screen locking?
- [ ] xautolock

## Things to do that wouldn't actually end up in this repo

- [ ] possible dnsmasq

[fresh]: http://freshshell.com
