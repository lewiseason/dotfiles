# ~/.dotfiles

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

These dotfiles are managed by [fresh].


### Fonts

After installing new fonts, it might be necessary
to rebuild the cache. Run `fc-cache -fv` to do this.

Applications will need to be restarted after doing so.

* [inconsolata] is released under the Open Font License.
* [source code pro] is released under the Open Font License.

### Sublime Text

Requires configuration for ST2 and ST3. Don't forget VCS Gutter, or work out why GutterColor isn't working.

[fresh]: http://freshshell.com
[inconsolata]: http://levien.com/type/myfonts/inconsolata.html
[source code pro]: https://github.com/adobe-fonts/source-code-pro
