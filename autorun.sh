#!/bin/sh

ln -s /mnt/sd/DCIM/122_TREK/bin/* /bin/
ln -s /mnt/sd/DCIM/122_TREK/usr/bin/* /usr/bin/
ln -s /mnt/sd/DCIM/122_TREK/usr/local /usr/local
ln -s /mnt/sd/DCIM/122_TREK/usr/lib /usr/lib
ln -s /mnt/sd/DCIM/122_TREK/usr/include /usr/include
ln -s /mnt/sd/DCIM/122_TREK/usr/libexec /usr/libexec
ln -s /mnt/sd/DCIM/122_TREK/sbin/* /sbin/
rm /lib/libpthread.so.0
ln -s /mnt/sd/DCIM/122_TREK/lib/* /lib/
ln -s /mnt/sd/DCIM/122_TREK/etc/* /etc/

ln -s /mnt/sd/DCIM/122_TREK/www/cgi-bin/connect2hotspot.cgi /www/cgi-bin/
#ln -s /mnt/sd/DCIM/122_TREK/www/* /www/
#ln -s /mnt/sd/DCIM/122_TREK/www/cgi-bin/* /www/cgi-bin/

rm /bin/vi
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/vi
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/top
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/awk
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/dd
rm /usr/bin/hexdump
ln -s /mnt/sd/DCIM/122_TREK/busybox /usr/bin/hexdump
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/killall
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/less
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/passwd
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/sed
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/tar
rm /usr/bin/telnet
ln -s /mnt/sd/DCIM/122_TREK/busybox /usr/bin/telnet
ln -s /mnt/sd/DCIM/122_TREK/busybox /bin/whoami

# ssh

# user: root password: admin
#dropbear -A -N root -C admin -U 0 -G 0

# public key auth
#dropbear -A -N root -C '-' -U 0 -G 0 -R /mnt/sd/DCIM/122_TREK/authorized_keys2 -s

# kill telnetd
#killall telnetd

#ftp
#killall tcpsvd
#tcpsvd 0 21 ftpd -w / &

# connect to Hotspots

sleep 5
/mnt/sd/w2
#sh weather.sh &
