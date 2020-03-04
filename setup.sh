#!/bin/sh

/opt/farm/ext/keys/setup-root-keys.sh


# TODO: Ubuntu 14.04 LTS and newer has Samba installed and group sambashare
# created right after fresh install. Detect similar cases, change GID of this
# group and chgrp directories previously group-owned by sambashare group.

/opt/farm/ext/passwd-utils/create-group.sh mfs 140
/opt/farm/ext/passwd-utils/create-group.sh sambashare 150
/opt/farm/ext/passwd-utils/create-group.sh imapusers 160
# RHEL registered GIDs: 170 avahi-autoipd, 190 systemd-journal


# you can put your custom logic here
/opt/farm/scripts/setup/extension.sh sf-mc-black
