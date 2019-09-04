# Termite Install

This is a script for installing Termite Terminal Emulator on Debian-based systems. It is necessary because Termite cannot be installed from apt's repositories.

**CAREFULL!**:
> Installing termite breaks gnome-terminal because of VTE's patched version dependencies

Termite on `Linux Mint` *(you may want to zoom)*:

![Termite Image](https://raw.githubusercontent.com/marcospb19/LoadingNewYear/master/images/installation_and_usage.png)

# More about Termite:

[Arch Wiki](https://wiki.archlinux.org/index.php/Termite) \
[Github Repository](https://github.com/thestinger/termite)


# Why I use Termite:
- It has no unnecessary bars
- Fits perfectly with a windows manager (e.g. [i3wm](https://github.com/i3/i3))
- Looks very clean (Similar to a customized URxvt, if you know about it)
- Have 3 selection modes that helps copying text without the mouse
- Also, I can right click links to insta-copy
- Slightly faster than most "loaded" terminal-emulators
- Clean and beatiful configuration file at `.config/termite/config`
- More little details I really like that don't fit in this list

# Script tested on:
- `Mint Cinnamon 19 - 19.1`
- `Ubuntu 16.04 - 18.10`
- `Debian 9`

# This repo is a fork
The [original script](https://github.com/Corwind/termite-install) was made by [Corwind](https://github.com/corwind). But he abandoned it by the time I was interested, simple `issues` were pending... So i made this, removed the Dockerfile, as I don't understand anything about Docker, fixed dependency issues and added some checks to the script.

You know what? maybe the Dockerfile prevented `termite` from breaking `gnome-terminal`, I'll never know.
