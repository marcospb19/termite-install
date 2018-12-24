#!/usr/bin/env sh

# Print the commands as the program runs
set -x

# Stops the script if any step fail
set -e

sudo apt-get install -y \
	g++ \
	gnutls-bin \
	gtk-doc-tools \
	intltool \
	git \
	libgirepository1.0-dev \
	libglib3.0-cil-dev \
	libxml2-utils \
	libpcre2-dev \
	libgnutls28-dev \
	gperf \
	libgtk-3-dev \
	libtool \
	valac

set +e
git clone --recursive https://github.com/thestinger/termite.git
git clone https://github.com/thestinger/vte-ng.git
set -e

echo export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"
cd vte-ng && ./autogen.sh && make && sudo make install
cd ../termite && make && sudo make install
sudo ldconfig
sudo mkdir -p /lib/terminfo/x; sudo ln -s \
/usr/local/share/terminfo/x/xterm-termite \
/lib/terminfo/x/xterm-termite

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60

set +x