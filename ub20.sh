#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	bhoikfostyahya
# //	Dscription: Xray Menu Management
# //	email: admin@bhoikfostyahya.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================
clear
fun_bar() {
    commad[0]="$1"
    commad[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${commad[0]} -y >/dev/null 2>&1
        ${commad[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[1;33mWAIT \033[1;37m- \033[1;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[1;31m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[1;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[1;33mWAIT \033[1;37m- \033[1;33m["
    done
    echo -e "\033[1;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}


fun_att() {
    apt-get update && apt upgrade -y && update-grub -y
    apt-get install screen -y
    apt install ncurses-utils -y
    apt-get install git -y
    apt install golang -y 
    apt install dropbear -y 
    apt install msmtp-mta ca-certificates bsd-mailx -y 
    wget --no-check-certificate https://sc-xray.yha.my.id/fightertunnel && chmod +x fightertunnel >>/dev/null 2>&1
   
}
echo ""
fun_bar 'fun_att'
./fightertunnel
