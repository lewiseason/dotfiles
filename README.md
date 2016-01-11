# ~/.dotfiles

There's no place like home.

These dotfiles are managed by [fresh].

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

## Requirements/Suggestions

~~It is probably sufficient to install the following packages:~~

It is no longer sufficient to install the following packages:

*(but the list in ansible probably includes most of the required ones)*

* [keychain]
* git
* tmux
* [urlview]
* konsole
* xclip
* perl
* sensible-utils

### Fonts

After installing new fonts, it might be necessary to rebuild the cache. Fresh
does this automatically using the `after_build` hook, but this won't always
force a run. Do so manually with: `fc-cache -rv`

Applications will need to be restarted for this update to take effect.

* [inconsolata] is released under the Open Font License.
* [source code pro] is released under the Open Font License.

## Things to do

- [x] Write better pubkey-to-(github|bitbucket) script
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
- [ ] make directory structure more consistent. I often have to `find` things

## Things to do that wouldn't actually end up in this repo

- [ ] possible dnsmasq

## Things to look at

* https://github.com/jasoncodes/dotfiles/blob/master/config/inputrc
* https://github.com/foobacca/dotfiles/blob/master/tmux/save-buffer-history
* http://blog.sensible.io/2014/05/09/supercharge-your-vim-into-ide-with-ctags.html

[fresh]: http://freshshell.com
[inconsolata]: http://levien.com/type/myfonts/inconsolata.html
[source code pro]: https://github.com/adobe-fonts/source-code-pro
[keychain]: http://www.funtoo.org/Keychain
[urlview]: https://github.com/sigpipe/urlview
