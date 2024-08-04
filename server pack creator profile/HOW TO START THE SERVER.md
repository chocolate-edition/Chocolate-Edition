# INSTRUCTIONS

## for use with a hosting service
some server hosts dont allow you to specify a start script, or automatically download the client pack for you to use. if this is the case, you can set up the server as the host intends, but replace the config, defaultconfigs, mods, and scripts folder with those found in this server pack.

## for unix (linux or mac)
simply run start.sh using bash or make your hosted server start script be

bash start.sh

## for windows
you will need to enable running powershell scripts from unknown sources. keep in mind this will allow any powershell script downloaded from the internet to be run, so be careful if downloading anything sketchy.

1. Start Windows PowerShell with the "Run as Administrator" option (windows key > search powershell > run as administrator). Only members of the Administrators group on the computer can change the execution policy.
2. Enable running unsigned scripts by entering:

set-executionpolicy remotesigned

then you can start the server by running start.ps1 with powershell. (right click > run with powershell)

the first time the server starts you will be prompted to accept the EULA. afterwards you should see the server logs as the server starts up.

if you have any problems dont hesitate to ask us in our discord server! https://discord.gg/a9Ht2PWb

## to specify which java runtime to use

if you get an error like  "Error: could not find or load main class @user_jvm_args.txt"
then it means your default java runtime is not compatible. we recommend java 17, but 18 should work as well. to fix this, open `variables.txt` and replace JAVA="java" with
JAVA="path/to/your/java/installation/java.exe"

example:

JAVA=C:/Program Files/Java/jdk-17/bin/java.exe

if you try starting it and get an error, where at the top it says it cannot parse your java path, chech and see if the path it shows has 2 sets of quotes. if it looks like ""C:/Program Files/Java/jdk-17/bin/java.exe"", then remove quotes from you path specification.

if it says "unexpected escape character \P", then try replacing all \ in your path with /

## to upgrade from a previous version:
you will need to **fully replace** config, defaultconfig, mods, and scripts. this means either deleting them from your current server and dragging in the new ones, or copy everything else from the old server into the new pack.

simply copying the folders either direction will not work as this may leave remnants of files that should no longer exist.