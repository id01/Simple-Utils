#!/bin/bash

cp raidchecker.sh ~/bin/raidchecker.sh
chmod +x ~/bin/raidchecker.sh
echo "" >> ~/.profile
echo "# Launch Raid Checker in background" >> ~/.profile
echo "raidchecker.sh" >> ~/.profile