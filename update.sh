#!/bin/bash



echo

echo ''...................................######..########....###....########..########.................................''
echo ''..##...##...##...##...##...##.....##....##....##......##.##...##.....##....##........##...##...##...##...##...##.''
echo ''...##.##.....##.##.....##.##......##..........##.....##...##..##.....##....##.........##.##.....##.##.....##.##..''
echo ''.#########.#########.#########.....######.....##....##.....##.########.....##.......#########.#########.#########''
echo ''...##.##.....##.##.....##.##............##....##....#########.##...##......##.........##.##.....##.##.....##.##..''
echo ''..##...##...##...##...##...##.....##....##....##....##.....##.##....##.....##........##...##...##...##...##...##.''
echo ''...................................######.....##....##.....##.##.....##....##....................................''

echo 
echo 

now=$(date)
echo "Current time: $now"

echo 
echo 


echo "Step 1: pre-configuring packages"
sudo dpkg --configure -a

echo

echo "Step 2: fix and attempt to correct a system with broken dependencies"
sudo apt-get install -f

echo

echo "Step 3: update apt cache"
sudo apt-get update

echo

echo "Step 4: upgrade packages"
sudo apt-get -y upgrade

echo

echo "Step 5: distribution upgrade"
sudo apt-get -y dist-upgrade

echo

echo "Step 6: remove unused packages"
sudo apt-get -y --purge autoremove

echo

echo "Step 7: clean up"
sudo apt-get -y autoclean


now=$(date)
echo "Current time: $now"                                                       
                                                                    
