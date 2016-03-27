#!/bin/bash

wifi=$(iwgetid -r)


if [[ ! -z $wifi ]]; then
		
		echo " $wifi"
	

else
	echo "Disconnected"
fi
