## What is JelosAddOns?

JelosAddOns is a simple tool that was forked from [Portmaster](https://github.com/christianhaitian/PortMaster) Thanks to [Christian Haitian](https://github.com/christianhaitian)

This tool allows you to download various game ports that are not available in Portmaster. This will require the latest Portmaster to run correctly, which should already be installed in Jelos. 

One of the goals of JelosAddOns is to not install or upgrade any existing OS libraries for any ports.  Any of the ports that need a particular non standard library are maintained within the ports' folder and made available specifically to that port during execution.

Most of the the ports available through JelosAddOns have only been configured to launch on the Anbernic RG552 running the latest version of Jelos.

All ports in JelosAddOns should follow the same formating as Portmaster.

## Install info

JelosAddOns should come preloaded on the latest version of Jelos

You can find the latest details on how to install Jelos [here](https://www.jelos.org/)

## Do I have to use JelosAddOns to install ports?

No.  You can simply go to the JelosAddOns repo (https://github.com/brooksytech/JelosAddOns), find the .zip of the port you want, download it and unzip the contents of it to the /roms/ports folder.  You'll also need to copy the JelosAddOns folder and Portmaster foldeer to your /roms/ports folder.

## How do I get more info about the ports in this repo like the sources used and additional asset needs if applicable?

wiki to come soon

## If there are updates to Ports, how will that work?

Just run JelosAddOns and reinstall the port.  You can also unzip the associated .zip for the port you want and unzip the contents of it to the ports folder.  This should install the latest port related files if they've been updated in JelosAddOns.  In most cases, it should not impact any existing game data you had to provide or existing saves unless the updated port made changes to the port backend that impacts previous saves.

## How can I help add ports to JelosAddOns?

See the packaging documentation [here](https://github.com/brooksytech/JelosAddOns/blob/main/docs/packaging.md) for more info on this.  Once you're port packaging has met these minimum requirements, you can either submit a Pull Request of this port package with details about the port such as a description of it and how to add any gamefiles or assets if needed or contact me on the [Jelos](https://discord.gg/seTxckZjJy) discord for further review and advisement.
