# Just mount the NAS partition to the plex server
```
fstab edit
```
Eg:
//192.168.1.100/plex/movies /plex/movies cifs credentials=/home/sujith/.smbcredentials 0 0

```
cifs-utils
```
to mount the samba share to the linux machine
