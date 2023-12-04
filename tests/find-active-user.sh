#!/usr/bin/env bash

seat=seat0

for session in $(loginctl list-sessions --no-legend | grep $seat | awk '{print $1}');
do
	active=$(loginctl show-session $session --property Active --value)
	echo $active
	if [ $active = "yes" ]; then
		echo active-found
		loginctl lock-session $session
	fi
done

#echo $sessions



#for i in $(loginctl --no-legend list-sessions | awk '{print $1}');do loginctl show-session -p Name -p Active -p Remote -p Type -p Display "$i";echo '-----';done


