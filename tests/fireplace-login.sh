#! /bin/sh

		echo $XAUTHORITY
		export XAUTHORITY=/var/lib/lightdm/.Xauthority
                echo $XAUTHORITY
		echo $DISPLAY	
		export DISPLAY=:0
		# either :0 or :1.0 
		# detect DISPLAY???
                echo $DISPLAY  

                setxkbmap be
		xdotool type --clearmodifiers --delay 20 "fireplace" ;
		xdotool key --clearmodifiers --delay 20 Return ;
                xdotool sleep 0.3 type --clearmodifiers --delay 20 "fireplace" ;
		xdotool sleep 0.3 key --clearmodifiers --delay 20 Return


#                xdotool type --clearmodifiers --delay 20 "fireplace" \
#			key Tab \
#			type "fireplace" \
#			key Return

