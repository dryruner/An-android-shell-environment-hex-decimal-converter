### A hex-decimal converter, especially for android shell environment, where no busybox, no awk, no bc, no expr exist.
* I usually encounter the situation where I need to print numbers in hex format in the bare android shell environment. In order to ease this pain and for other places (like in init.rc) taking advantage of this, the converer comes out.
* Usage:
$ adb push converter.sh /data
$ adb shell

In the android shell environment:
$ chmod 777 /data/converter.sh
$ echo $(sh /data/converter.sh <num>); # where num is decimal number like:  111, 1234567, etc.

E.X.:
root@nexus:/data # echo $(sh /data/converter.sh 222222222)                     
0xd3ed78e
