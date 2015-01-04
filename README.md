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

Usage
-----

```
ubuntu@ubuntu-armhf:~$ ./rssi -h

Usage: ./rssi [-s] [-r btaddr]

	-h          display this text
	-s          scan
	-r btaddr   get rssi on device at address btaddr
```

Scanning
--------

```
ubuntu@ubuntu-armhf:~$ ./rssi -s
Open device
Scan
Start inquiry ...
00:1E:C2:8A:92:89  iMac de JTB
10:9A:DD:CD:EE:2C  MacBook Pro de Jean-Thierry BONHOMME
Program finished
```

Get rssi
--------

```
ubuntu@ubuntu-armhf:~$ ./rssi -r 98:F0:AB:4F:C9:98
Open device
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1029
RSSI return value: -6
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1051
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1052
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1049
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1041
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 1035
RSSI return value: -7
Event: 0x06
EVT_CMD_STATUS - status : 0 - ncmd : 1 - opcode : 1043
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -7
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -7
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -7
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -7
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -5
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -5
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -5
EVT_CMD_COMPLETE - ncmd : 1 - opcode : 5125
RSSI return value: -5
```

Todo
====

1. Clean event logs
2. Handle a dynamic list of bbaddr to get their ssid
3. Send results to a centralized database
4. Send email in case a known device appear or desappear (ie kids are at home after school)

Sources
=======

A few links that helped me:

* http://people.csail.mit.edu/albert/bluez-intro/c404.html
* http://www.raspberrypi.org/forums/viewtopic.php?t=47466
* http://rawsontetley.org/ref_linuxbluezdiscoverable.html


