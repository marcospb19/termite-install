#!/usr/bin/env bash

if [[ $(which termite) ]]; then
	echo "termite is already installed at \"$(which termite)\", exiting."
	exit 0
fi

# Stops the script if any step fails
set -e

cat << EOT
sudo apt-get install -y
	g++
	git
	gnutls-bin
	gperf
	gtk-doc-tools
	intltool
	libgirepository1.0-dev
	libglib3.0-cil-dev
	libgnutls28-dev
	libgtk-3-dev
	libpcre2-dev
	libtool
	libxml2-utils
	valac
EOT

sudo apt-get install -y \
	g++                    \
	git                    \
	gnutls-bin             \
	gperf                  \
	gtk-doc-tools          \
	intltool               \
	libgirepository1.0-dev \
	libglib3.0-cil-dev     \
	libgnutls28-dev        \
	libgtk-3-dev           \
	libpcre2-dev           \
	libtool                \
	libxml2-utils          \
	valac

if [[ -d termite && -d termite/.git ]]; then
	echo "Termite already cloned, skipping"
else
	echo "git clone --recursive https://github.com/thestinger/termite"
	git clone --recursive https://github.com/thestinger/termite
fi

if [[ -d vte-ng && -d vte-ng/.git ]]; then
	echo "Vte-ng already cloned, skipping"
else
	echo "git clone https://github.com/thestinger/vte-ng"
	git clone https://github.com/thestinger/vte-ng
fi

echo export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"

echo "Building VTE-NG"  ; sleep 0.4
cd vte-ng && ./autogen.sh && make && sudo make install

echo "Building Termite" ; sleep 0.4
cd ../termite && make && sudo make install

echo "Now we'll need permissions to finish the installation and apply everything"

sudo ldconfig
sudo mkdir -p /lib/terminfo/x; sudo ln -s \
/usr/local/share/terminfo/x/xterm-termite \
/lib/terminfo/x/xterm-termite

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60

set +x
