# Overview

This charm is designed to ensure that the juju unit to which it deploys is optimally-configured for secure, unattended operation, and report a succinct summary of this in its juju status output.
It is assumed that the unit is safe to reboot at any time and is part of a well-behaved application which can recover from such reboots automatically.

Configuration items changed:

- Install unattended-upgrades
- Set unattended-upgrades to automatically reboot if required
- Enable verbose boot, automatic file system fixing, and clearing out of /tmp in /etc/default/rcS

# Usage

How to use this charm:

    juju deploy cs:primarycharm
    juju deploy ./unattended unattended
    juju add-relation primarycharm unattended

# Configuration

By default unattended turns on AUTOMATIC REBOOTS when unattended-upgrades indicates they are needed.  If you do not want this, set reboot-time to 'none' or a fixed time.

Set remove-unused to false if you do not want unused apt packages to be removed.

# License

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.  See the included file COPYING.txt
    for details.

# Contact Information

Author: Paul Gear <paul.gear@canonical.com>

https://code.launchpad.net/charm-unattended/
