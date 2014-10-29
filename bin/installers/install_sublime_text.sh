#!/bin/sh

# Sublime Text 3 install with Package Control
# http://simonewebdesign.it/install-sublime-text-3-on-linux/

# Run this script with:
# $ curl -L git.io/sublimetext | sh


# Detect the architecture
if [ `uname -m` = 'x86_64' ]; then
  URL="http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3065_x64.tar.bz2"
else
  URL="http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3065_x32.tar.bz2"
fi


# Download the tarball, unpack and install
curl -o ~/st3.tar.bz2 $URL
if tar -xf ~/st3.tar.bz2 --directory=$HOME; then
  sudo mv ~/sublime_text_3/ /opt/
  sudo ln -s /opt/sublime_text_3/sublime_text /bin/subl
fi
rm ~/st3.tar.bz2


# Package Control - The Sublime Text Package Manager: https://sublime.wbond.net
curl -o ~/Package\ Control.sublime-package https://sublime.wbond.net/Package%20Control.sublime-package
sudo mv ~/Package\ Control.sublime-package /opt/sublime_text_3/Packages/


# Add to applications list
mkdir -p ~/.local/share/applications
cat << EOF > ~/.local/share/applications/sublime.desktop
[Desktop Entry]
Name=Sublime Text
Exec=subl %F
MimeType=text/plain;
Terminal=false
Type=Application
Icon=/opt/sublime_text_3/Icon/128x128/sublime-text.png
Categories=Utility;TextEditor;Development;
EOF


echo ""
echo "Sublime Text 3 installed successfully!"
echo "Run with: subl"