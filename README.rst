Flatpak packaging for Bitwig Studio
===================================

This is an attempt at packaging Bitwig Studio using Flatpak for Linux.
**Don't use it yet!**

Instructions
============

* Install flatpak and flatpak-builder.
* flatpak remote-add --if-not-exists fdsdk https://cache.sdk.freedesktop.org/freedesktop-sdk.flatpakrepo
* flatpak install fdsdk org.freedesktop.Sdk//19.08
* make run

Known Issues
============

See https://github.com/bitwig/bitwig-studio-flatpak/issues
