#!/bin/sh

for i in $(cat /etc/passwd | grep -w '/bin/bash\|/bin/sh' | cut -d: -f1); do
	passwd -e $i
done
