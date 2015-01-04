bbtooth
=======

Beaglebone Black Bluetooth RSSI scanner

Tested on <code>Linux ubuntu-armhf 3.8.13-bone20 #1 SMP Wed May 29 06:14:59 UTC 2013 armv7l armv7l armv7l GNU/Linux</code>

Installation
============

Instal bluez and bluetooth dependencies.

```
sudo apt-get install --no-install-recommends bluez bluez-utils minicom
sudo apt-get install --no-install-recommends bluetooth libbluetooth-dev
sudo apt-get install libncurses5-dev libncursesw5-dev
```


Build
=====

```
make
```

Use it
======


Sources
=======

A few links that helped me:

* http://people.csail.mit.edu/albert/bluez-intro/c404.html
* http://www.raspberrypi.org/forums/viewtopic.php?t=47466
* http://rawsontetley.org/ref_linuxbluezdiscoverable.html


