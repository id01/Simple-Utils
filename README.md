A few simple housework automation utilities. Listed below:

## ADDTOPATH
### Why create this?
Because I have too much spare time to use to try to save myself some time.  
This simlinks executable files in a directory to ~/bin.  
You may want to simlink /root/bin to /usr/local/bin.

### Installation
```
sudo cp addtopath /usr/local/bin/addtopath  
sudo chmod +x /usr/local/bin/addtopath
```
To uninstall, remove /usr/local/bin/addtopath

## RAIDCHECKER
### Why create this?
Good question. Because I just got a raid array today (I'm paranoid about losing my data).  
And to officially be even more paranoid, I want to be warned ASAP when things stop working.

### Installation
```
install.sh
```
To uninstall, remove labeled section from ~/.profile and remove raidchecker.sh from ~/bin

## BACKUP
### Why create this?
Because I'm afraid of losing my data. This was written when I was on Ubuntu.  
No Installation required.  

## VOLUMECONTROL
### Why create this?
Because I want to control my volume from a simple command.  

### Installation
This program is for Arch Linux. It makes use of notify-send.sh. Install it and run this.  