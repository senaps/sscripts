#!/bin/bash

t=true
while $t
do
	ssh $1
	if [[ $? == 0 ]]; then
		t=false
	fi
	sleep 2
done
