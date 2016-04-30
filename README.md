# ~/.dotfiles

There's no place like home.

These dotfiles are managed by [fresh].

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

## Requirements/Suggestions

~~It is probably sufficient to install the following packages:~~

It is no longer sufficient to install the previously listed packages,
but Ansible will take care of this for the most part.

Just make sure `curl` is installed.

## Things to do

- [x] Write better pubkey-to-(github|bitbucket) script
- [ ] gitlab support
- [x] Media keys (brightness, volume)
- [x] Screenshot
- [ ] Power manager? (xfce4-power-manager?)
- [ ] Clipboard manager
- [x] `~/.config/konsolerc`
- [x] konsole solarized light isn't really cutting it
- [ ] The way bootstrap.sh adds keys to services with pubkey-up is horrible.
      pubkey-up in general is also horrible now that it makes the assumptions
      required for this to work (5c629455, 014bd995).
- [ ] ~/.signature. This requires knowing what pc we're on
- [x] mutt config(s)
- [x] make directory structure more consistent. I often have to `find` things
- [ ] suspend (`dbus-send --print-reply --system --dest=org.freedesktop.login1 /org/freedesktop/login1 org.freedesktop.login1.Manager.Suspend boolean:true`). Screen locking?

## Things to do that wouldn't actually end up in this repo

- [ ] possible dnsmasq

## Things to look at

* https://github.com/jasoncodes/dotfiles/blob/master/config/inputrc
* https://github.com/foobacca/dotfiles/blob/master/tmux/save-buffer-history
* http://blog.sensible.io/2014/05/09/supercharge-your-vim-into-ide-with-ctags.html

[fresh]: http://freshshell.com
