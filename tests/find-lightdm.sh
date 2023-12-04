#!/usr/bin/env bash

seat=seat0


# find lightdm session
lightdmSession=$(loginctl list-sessions | grep $seat | grep lightdm)

echo $lightdmSession

if [ -z "$lightdmSession" ]
then
      echo "\$var is empty"
      # find session to lock and loop
else
      # get the display lightdm is running on
      IFS=' ' read -r -a array <<< "$lightdmSession"
      display=$(loginctl show-session ${array[0]} | grep Display)
      display=${display:8:2}
      echo $display
fi
