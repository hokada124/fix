#!/bin/bash
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
ZIPFILE=xorg_conf.zip

mkdir ~/backup
sudo mv /usr/share/X11/xorg.conf.d/* ~/backup/
cd /usr/share/X11/xorg.conf.d/
sudo wget http://jbdatko.files.wordpress.com/2013/07/$ZIPFILE
sudo unzip $ZIPFILE
sudo rm $ZIPFILE
#Change the keyboard layout
sudo sed -i 's/gb/us/g' 10-keyboard.conf
