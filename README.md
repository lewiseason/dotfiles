# ~/.dotfiles

## Installation

``` sh
FRESH_LOCAL_SOURCE=lewiseason/dotfiles bash <(\curl -sL get.freshshell.com)
```

These dotfiles are managed by [fresh].

## Development

When developing on a system when the repo is in a non-standard place, 
it is tedious and impractical to commit the repo, push and run `fresh update`.

Instead, pass the following environment to fresh, to override where it should look for it's configuration:

``` sh
FRESH_RCFILE=~/projects/dotfiles/freshrc FRESH_LOCAL=~/projects/dotfiles
```

## Notes


### Fonts

After installing new fonts, it might be necessary
to rebuild the cache. Run `fc-cache -fv` to do this.

Applications will need to be restarted after doing so.

* [inconsolata] is released under the Open Font License.
* [source code pro] is released under the Open Font License.

[fresh]: http://freshshell.com
[inconsolata]: http://levien.com/type/myfonts/inconsolata.html
[source code pro]: https://github.com/adobe-fonts/source-code-pro
