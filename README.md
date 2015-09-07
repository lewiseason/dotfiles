# ~/.dotfiles

There's no place like home.

These dotfiles are managed by [fresh].

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

## Requirements/Suggestions

It is probably sufficient to install the following packages:

* [keychain]
* git
* tmux
* [powerline]
* [urlview]
* konsole
* xclip
* perl
* sensible-utils

## Notes

### Fonts

After installing new fonts, it might be necessary
to rebuild the cache. Fresh does this automatically
using the `after_build` hook, but this won't always
force a run. Do so manually with: `fc-cache -rv`

Applications will need to be restarted for this update
to take effect.

* [inconsolata] is released under the Open Font License.
* [source code pro] is released under the Open Font License.
* powerline symbol font is released as part of [powerline]

## Things to do

- [x] Write better pubkey-to-(github|bitbucket) script
- [ ] Media keys (brightness, volume, screenshot?)

## Things to look at

* https://github.com/jasoncodes/dotfiles/blob/master/config/inputrc
* https://github.com/foobacca/dotfiles/blob/master/tmux/save-buffer-history
* http://blog.sensible.io/2014/05/09/supercharge-your-vim-into-ide-with-ctags.html

[fresh]: http://freshshell.com
[powerline]: https://github.com/powerline/powerline
[inconsolata]: http://levien.com/type/myfonts/inconsolata.html
[source code pro]: https://github.com/adobe-fonts/source-code-pro
[keychain]: http://www.funtoo.org/Keychain
[urlview]: https://github.com/sigpipe/urlview
