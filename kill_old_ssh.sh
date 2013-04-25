#!/bin/bash
#
# kills old ssh sessions (Idle 10 or more days)
#
for ii in $(w | sed -n '2,$p' | grep [0-9][0-9]days | awk '{print($2)}'); do
	kill $(ps aux | grep "sshd.*${ii}$" | awk '{print($2)}')
done
