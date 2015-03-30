# ~/.dotfiles

There's no place like home.

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

These dotfiles are managed by [fresh].

## Requirements

* keychain

## Notes

### Fonts

After installing new fonts, it might be necessary
to rebuild the cache. Fresh does this automatically
using the `after_build` hook, but if you want to
force a run, do `fc-cache -rv`

Applications will need to be restarted after doing so.

* [inconsolata] is released under the Open Font License.
* [source code pro] is released under the Open Font License.
* powerline symbol font is released as part of [powerline]


[fresh]: http://freshshell.com
[powerline]: https://github.com/powerline/powerline
[inconsolata]: http://levien.com/type/myfonts/inconsolata.html
[source code pro]: https://github.com/adobe-fonts/source-code-pro
