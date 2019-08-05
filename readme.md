# Termite Install

This is a script for installing termite terminal emulator on debian-based systems

CAREFULL!:
> Installing termite breaks gnome-terminal because of VTE's patched version
> dependencies


Termite on `linux mint` (you may want to zoom ~150%):
![Termite Image](https://raw.githubusercontent.com/marcospb19/LoadingNewYear/master/images/installation_and_usage.png)

More about termite:

[arch wiki](https://wiki.archlinux.org/index.php/Termite) \
[github.com/thestinger/termite](https://github.com/thestinger/termite)


Reasons why i use termite:
> Have no unnecessary bars \
> Fits perfectly with a windows manager (e.g. [i3wm](https://github.com/i3/i3)) \
> Looks very clean \
> Have 3 selection modes that helps copying text without the mouse \
> Slightly faster than most "loaded" terminal-emulators \
> Clean and useful configuration file at .config/termite/config \
> More little details i like

**Termite cannot be installed from apt's repositories**

Script tested on:

> linux mint cinnamon 19 - 19.1 \
> ubuntu 16.04 - 18.10          \
> debian 9

### This is a fork
[Corwind](https://github.com/corwind) is the guy who wrote the original script,
but (imo) it needed to be improved in some ways, also, i think that he supposed
to use this it with docker (maybe this way you could prevent it from breaking
gnome-terminal) but i don't understand about docker, if you want to check it
out, the link is [here](https://github.com/corwind).
