#!/usr/bin/env sh
apt-get install autoconf-archive autotools-dev autopoint gobject-introspection \
         gsettings-desktop-schemas-dev intltool libdbusmenu-glib-dev \
         libdbusmenu-gtk3-dev libgdome2-dev libgirepository1.0-dev \
         libglib2.0-0 libglibmm-2.4-dev libgstreamer0.10-dev \
         libgtkmm-3.0-dev libayatana-indicator3-dev libpanel-applet-4-dev \
         libpulse-dev libsigc++-2.0-dev libxi-dev libxmu-dev \
         libxtst-dev libxss-dev python3-jinja2 libtool
./configure
sed -i 's/func_fatal_error "only absolute run-paths are allowed"/arg="${PWD}\/${arg}"/' libtool
make
sudo checkinstall
