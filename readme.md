# Termite Install

This is a script for installing Termite Terminal Emulator on Debian-based systems. It is necessary because Termite cannot be installed from apt's repositories.

**CAREFULL!**:
> Installing termite breaks gnome-terminal because of VTE's patched version dependencies

Termite on Linux Mint Cinnamon *(you may want to zoom ~150%)*:

![Termite Image](https://raw.githubusercontent.com/marcospb19/LoadingNewYear/master/images/installation_and_usage.png)

# More about Termite:

[arch wiki](https://wiki.archlinux.org/index.php/Termite) \
[github.com/thestinger/termite](https://github.com/thestinger/termite)


# Why I use Termite:
- Have no unnecessary bars 
- Fits perfectly with a windows manager (e.g. [i3wm](https://github.com/i3/i3)) 
- Looks very clean 
- Have 3 selection modes that helps copying text without the mouse 
- Slightly faster than most "loaded" terminal-emulators 
- Clean and useful configuration file at `.config/termite/config`
- More little details I like

# Script tested on:
- Mint Cinnamon 19 - 19.1
- Ubuntu 16.04 - 18.10
- Debian 9

# This repo is a fork
The [original script](https://github.com/Corwind/termite-install) was made by [Corwind](https://github.com/corwind).

I made this version to:
- customize some aspects;
- use it without Docker (using on this way you can prevent it from breaking your `gnome-terminal`).
