# INSTRUCTIONS

## for use with a hosting service

some server hosts dont allow you to specify a start script, or automatically download the client pack for you to use. if this is the case, you can set up the server as the host intends, but replace the `config`, `defaultconfigs`, `mods`, `resources` and `scripts` folder with those found in this server pack.

## for unix (linux or mac)

simply run `start.sh` using bash or make your hosted server start script be

```sh
bash start.sh
```

## for windows

double click to Run `start.bat`.
Do **not** delete the PowerShell (ps1) files!

### Convenience

You may run `start.ps1` from a console-window manually, but using the Batch-script is recommended.
Running PowerShell-scripts requires changing the ExecutionPolicy of your Windows-system. The Batch-script
can bypass this for the start-script.

TL;DR: start.bat better than start.ps1

## Common problems

the first time the server starts you will be prompted to accept the EULA. afterwards you should see the server logs as the server starts up.

if you have any problems dont hesitate to ask us in our discord server! <https://discord.gg/chocolate-edition-minecraft-945364406609514517>

## to specify which java runtime to use

if you get an error like  "Error: could not find or load main class @user_jvm_args.txt"
then it means your default java runtime is not compatible. we recommend java 17, but 18 should work as well. to fix this, open `variables.txt` and replace JAVA="java" with
JAVA="path/to/your/java/installation/java.exe"

example:

JAVA=C:/Program Files/Java/jdk-17/bin/java.exe

if you try starting it and get an error, where at the top it says it cannot parse your java path, check and see if the path it shows has 2 sets of quotes. if it looks like ""C:/Program Files/Java/jdk-17/bin/java.exe"", then remove quotes from you path specification.

if it says "unexpected escape character \P", then try replacing all \ in your path with /

if you get a warning or error about having spaces in your server folder path, make sure there are no spaces in any part of the path to the server folder.

for example
"C:\users\user\desktop\chocolate edition server"
should instead be
"C:\users\user\desktop\chocolate_edition_server"

## to upgrade from a previous version

you will need to **fully replace** `config`, `defaultconfigs`, `mods`, `resources` and `scripts`. this means either deleting them from your current server and dragging in the new ones, or copy everything else from the old server into the new pack.

simply copying the folders either direction will not work as this may leave remnants of files that should no longer exist.
