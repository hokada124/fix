chrubuntu_trackpad
==================

A simple script to fix the trackpad issue on the Samsung Chromebooks running
Chrubuntu.  The original source of the fix came from this [blog
post](http://craigerrington.com/blog/fixing-touchpad-issues-on-arm-chromebook-chrubuntu/),
I just wrapped it into a shell script.

## Usage

Once cloned, just do a `./fix_trackpad.sh` and then reboot.  Note this will set
the keyboard layout to US.  An improvement would be if I kept your existing
keyboard layout setting, assuming that you set it already, but for the time
being it can be manually changed in:
`/usr/share/X11/xorg.conf.d/10-keyboard.conf`.
