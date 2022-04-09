singleprogram - dwm for single program/app usage
============================
singleprogram is an extremely fast, small, and dynamic window manager for single program usage.


Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running singleprogram
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec singleprogram

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec singleprogram

(This will start dwm on display :1 of the host foo.bar.)


Examples:
----------
Kiosk usage: 

Add to xinitrc: `firefox --kiosk *your kiosk page* & exec singleprogram`
