#!/bin/bash
## install for banners
sudo apt -y install figlet

echo '==============================================================================================='
figlet -f digital Started $(date)
echo '==============================================================================================='
echo 

echo "Step 1: Pre-configuring packages"
sudo dpkg --configure -a

echo

echo "Step 2: Fix and attempt to correct a system with broken dependencies"
sudo apt-get install -f

echo

echo "Step 3: Update apt cache"
sudo apt-get update

echo

echo "Step 4: Upgrade packages"
sudo apt-get -y upgrade

echo

echo "Step 5: Distribution upgrade"
sudo apt-get -y dist-upgrade

echo

echo "Step 6: Remove unused packages"
sudo apt-get -y --purge autoremove

echo

echo "Step 7: Clean up"
sudo apt-get -y autoclean

echo
                                                     
echo "Step 8: Updating glances"
pip install --upgrade glances

echo


echo "Step 9: Clearning logs..."
journalctl --vacuum-time=7d

echo "Step 9: Rebooting if needed..." 
now=$(date)
echo "Current time: $now"                                                                  
needrestart -r i

echo '==============================================================================================='
figlet -f digital Ended $(date)
echo '==============================================================================================='
echo 
