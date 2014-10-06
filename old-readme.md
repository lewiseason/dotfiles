# Configuration files that are missing, that should be created:

* `.config/sublime-text-2/Settings/License.sublime_license`
* `.config/sublime-text-2/Packages/User/Gist.sublime-settings`

# Applications which are not configured

* Conky
* Gigolo
* Nitrogen
* Thunar
* tint2
* Unison
* Bash

# Things to grab from minto

* bash config
* bin directory

# Things to look into

* Openbox specifies fonts
* Openbox menu.xml
* Openbox in general
* Better backups

# Things to do

* Look at ~/bin on other boxes
* Find pubkey-to-github script
* Find/rewrite better eternal history script

# Fonts

After installing new fonts (ie cloning this repo), it might be necessary
to rebuild the cache. Run `fc-cache -fv` to do this.

Applications which depend on these new fonts (eg: Sublime Text) will
need to be restarted.
