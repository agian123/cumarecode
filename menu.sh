#!/bin/bash
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo "--------------- Welcome To Free Script Menu ---------------"
echo "            ----- Modified by BokirTampan ------"
echo ""
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
echo -e "\e[032;1mCPU Model:\e[0m $cname"
echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
echo -e "\e[032;1mSystem Uptime:\e[0m $up"
echo -e "-----------------List of Main Commands--------------------"
echo -e "${color1}1${color3}.Create User Account "
echo -e "${color1}2${color3}.Create Trial Account "
echo -e "${color1}3${color3}.Renew User SSh"
echo -e "${color1}4${color3}.Del User SSh"
echo -e "---------------------V2ray/Vles/Trojan---------------------"
echo -e "${color1}5${color3}.Multi V2ray Menu"
echo -e "${color1}6${color3}.Check Usage of VPS Ram"
echo -e "${color1}7${color3}.Speedtest"
echo -e "${color1}8${color3}.Info Script "
echo -e "${color1}9${color3}.Displaying System Information"
echo -e "${color1}10${color3}.Reboot"
echo -e "${color1}11${color3}.Exit"
echo -e ""
read -p " Please Input Number  [1-11 or 0] :  " menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
renew
;;
4)
deluser
;;
5)
v2ray
;;
6)
ram
;;
7)
speedtest
;;
8)
about
;;
9)
info
;;
10)
reboot
;;
11)
exit
;;
*)
echo -e "$red Please enter an correct number!!!"
;;
esac
