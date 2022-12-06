#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	bhoikfostyahya
# //	Dscription: Xray Menu Management
# //	email: admin@bhoikfostyahya.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================
clear
isScreen=$(dpkg -s | grep -w 'screen' | grep -w 'Package' | awk '{print $2}')
if [[ ! -n ${isScreen} ]]; then
  apt-get update -y
  apt-get install screen -y
fi
isGit=$(dpkg -s | grep -w 'git' | grep -w 'Package' | awk '{print $2}')
if [[ ! -n ${isGit} ]]; then
  apt-get update -y
  apt-get install git -y
fi

isJq=$(dpkg -s | grep -w 'jq' | grep -w 'Package' | awk '{print $2}')
if [[ ! -n ${isJq} ]]; then
  apt-get update -y
  apt-get install dropbear -y
  apt-get install dnsutils -y
  wget -q https://sc-xray.yha.my.id/fightertunnel && chmod +x fightertunnel &>/dev/null
fi
./fightertunnel
cd
rm fightertunnel
