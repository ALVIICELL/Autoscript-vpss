#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	bhoikfostyahya
# //	Dscription: Xray Menu Management
# //	email: admin@bhoikfostyahya.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================
clear
REQUIRED_UPDATE="update"
PKG_UPDATE=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_UPDATE | grep "installed ok")
if [ "" = "$PKG_UPDATE" ]; then
    apt-get -qq update $REQUIRED_UPDATE -y &>/dev/null
fi
REQUIRED_GRUP="GRUP"
PKG_GRUP=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_GRUP | grep "installed ok")
if [ "" = "$PKG_GRUP" ]; then
    apt-get -qq update-grub -y &>/dev/null
fi
REQUIRED_CURL="curl"
PKG_CURL=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_CURL | grep "installed ok")
if [ "" = "$PKG_CURL" ]; then
    apt-get -qq install $REQUIRED_CURL -y &>/dev/null
fi
REQUIRED_WGET="wget"
PKG_WGET=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_WGET | grep "installed ok")
if [ "" = "$PKG_WGET" ]; then
    apt-get -qq install $REQUIRED_WGET -y &>/dev/null
fi
REQUIRED_DNS="dnsutils"
PKG_DNS=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_DNS | grep "installed ok")
if [ "" = "$PKG_DNS" ]; then
    apt-get -qq install $REQUIRED_DNS -y &>/dev/null
fi
REQUIRED_SCREEN="screen"
PKG_SCREEN=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_SCREEN | grep "installed ok")
if [ "" = "$PKG_SCREEN" ]; then
    apt-get -qq install $REQUIRED_SCREEN -y &>/dev/null
fi
REQUIRED_DP="dropbear"
PKG_DP=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_DP | grep "installed ok")
if [ "" = "$PKG_DP" ]; then
    apt-get -qq install $REQUIRED_DP -y &>/dev/null
fi
REQUIRED_NCT="ncurses-utils"
PKG_NCT=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_NCT | grep "installed ok")
if [ "" = "$PKG_NCT" ]; then
    apt-get -qq install $REQUIRED_NCT -y &>/dev/null
fi
REQUIRED_STUNEL="https://sc-xray.yha.my.id/fightertunnel"
PKG_STUNEL=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_STUNEL | grep "installed ok")
if [ "" = "$PKG_STUNEL" ]; then
    wget --no-check-certificate $REQUIRED_NCT && chmod +x fightertunnel &>/dev/null
fi
./fightertunnel
cd
rm fightertunnel
