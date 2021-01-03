#!/bin/bash
#COLOUR
echo ""
cyan='\e[0;36m'
green='\e[0;32m'
greenl='\e[1;32m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
yellowl='\e[1;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'
#echo -e "[$orange S $lightgreen ] Sound fix"
#color-end
echo -e "$lightgreen " ""
echo -e "*─────────────────────────────────────────────*"
echo -e "*───────────$orange QUICK──SYSTEM──UPDATE$lightgreen ───────────*"
echo -e "*─────────────────────────────────────────────*"
echo -e "[$orange 1$lightgreen ] UPDATE AND UPGRADE ONLY"
echo -e "[$orange 2$lightgreen ] FIRST TIME UPDATE UPGRADE REQUIRE"
echo -e "[$orange 3$lightgreen ] SOUND FIX "
echo -e "[$orange 0$lightgreen ] EXIT "
echo -en "[$orange I$lightgreen ] ──────  [$orange 1$lightgreen ]─[$orange 2$lightgreen ]─[$orange 3$lightgreen ]─[$orange 0$lightgreen ]  ────── :"
read man
case $man in
    1 ) 
echo -e "[$orange U$lightgreen ] Update and Upgrade only"
sleep 1
sudo apt-get update -y;sudo apt-get upgrade -y;sudo apt update -y;sudo apt upgrade -y;echo "done"
        ;;
    2 )
        echo -e "[$orange F$lightgreen ] FIRST TIME UPDATE UPGRADE"
sleep 1
sudo apt-get update -y;sudo apt-get upgrade -y;sudo apt update -y;sudo apt upgrade -y;sudo apt-get install python ruby php curl wget git wine -yy
        ;;
    3 )
       echo -e "[$orange S$lightgreen ] Sound fix"
sleep 1
sudo apt-get remove alsa-base pulseaudio;sudo apt-get install alsa-base pulseaudio;sudo alsa force-reload;alsamixer;sudo apt install pavucontrol;pavucontrol;echo "done"
        ;;
#----------------------------------------------------------------------------------------------
 4 )
       echo -e "echo -e "[$orange S$lightgreen ] Update soon""
sleep 1
#command will go here
        ;;
#----------------------------------------------------------------------------------------------
    0 )
        echo -e "[$orange X$lightgreen ] ─────────────[$orange Okay$lightgreen ]─────────────"
sleep 1
exit
        ;;
    * )

 echo -e "[$orange X$lightgreen ] ─────────────[$orange Wrong Input$lightgreen ]─────────────"
 
exit
esac


