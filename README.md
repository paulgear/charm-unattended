# Overview

Configure unattended upgrades and reboots.  Report status of pending updates and reboots.

# Usage

Step by step instructions on using the charm:

    juju deploy primarycharm
    juju deploy unattended
    juju add-relation primarycharm unattended

# Configuration

By default unattended turns on AUTOMATIC REBOOTS when unattended-upgrades indicates they are needed.  If you do not want this set reboot-time to 'none' or a fixed time.

# License

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.  See the included file COPYING.txt
    for details.

# Contact Information

Author: Paul Gear <paul.gear@canonical.com>

- https://code.launchpad.net/~paulgear/
