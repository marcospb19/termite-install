#!/usr/bin/env bash

# If it is already installed
if [[ $(which termite) ]]; then
	echo "Termite is already installed at \"$(which termite)\"! exiting."
	exit 0
fi

# Setting a flag, stops the script if any step fail
set -e

# Output to the user the command
cat <<- EOT
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

# Now run it
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


# Cloning the termite repository
#
# Check if already cloned the repositories we're about to clone
if [[ -d "termite" && -d "termite/.git" ]]; then
	echo "Termite already cloned, skipping"

else
	echo "Cloning the first repository"
	echo "git clone https://github.com/thestinger/termite --recursive"
	git clone https://github.com/thestinger/termite --recursive
fi

# Cloning the vte-ng repository
#
# Check if already cloned the repositories we're about to clone
if [[ -d "vte-ng" && -d "vte-ng/.git" ]]; then
	echo "Vte-ng already cloned, skipping"

else
	echo "git clone https://github.com/thestinger/vte-ng"
	git clone https://github.com/thestinger/vte-ng
fi

echo export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"

echo "Building VTE-NG" ; sleep 0.3
echo "cd vte-ng && ./autogen.sh && make && sudo make install"
cd vte-ng && ./autogen.sh && make && sudo make install

echo "Building Termite" ; sleep 0.3
echo "cd ../termite && make && sudo make install"
cd ../termite && make && sudo make install

echo "Asking permissions to end the installation..."

sudo ldconfig
sudo mkdir -p /lib/terminfo/x; sudo ln -s \
/usr/local/share/terminfo/x/xterm-termite \
/lib/terminfo/x/xterm-termite

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60
