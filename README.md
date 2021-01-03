# archlinux

# Installation
https://qiita.com/Gen-Arch/items/da296b7cbe5d87abc5a4


```bash
$ arch-chroot /mnt /bin/bash
$ export LANG=en_US.UTF-8
$ export TIME=en_DK.UTF-8
$ echo $LANG UTF-8 >> /etc/locale.gen
$ echo $TIME UTF-8 >> /etc/locale.gen
$ locale-gen
$ echo LANG=$LANG > /etc/locale.conf
$ echo LC_TIME=$TIME >> /etc/locale.conf
$ ln -fs /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
$ hwclock --systohc --utc
$ echo mymachine > /etc/hostname
$ systemctl enable dhcpcd.service
$ passwd
```

```bash
# Install ansible

$ git submodule init && git submodule update
$ sudo pacman -Syy python-passlib ansible

# Run playbook
$ sh run.sh
```
