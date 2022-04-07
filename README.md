# snapoff

Script removes the firefox snap from Ubuntu 22.04, purges snapd and pins apt so that snaps will not be installed automatically during upgrades. Then the mozilla team PPA is added and pinned so that it will be seen by apt ahead of the default snap version. Finally the current non-snap firefox is installed.
Tested on Xubuntu 22.04 Beta, should work on other flavors but your mileage may vary.

I automated this using these directions. h/t to @lanrat for getting me started.

https://ubuntuhandbook.org/index.php/2022/04/install-firefox-deb-ubuntu-22-04/
