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

date 

echo 
echo 


echo -e "step 1: pre-configuring packages"
sudo dpkg --configure -a

echo

echo -e "step 2: fix and attempt to correct a system with broken dependencies"
sudo apt-get install -f

echo

echo -e "step 3: update apt cache"
sudo apt-get update

echo

echo -e "step 4: upgrade packages"
sudo apt-get -y upgrade

echo

echo -e "step 5: distribution upgrade"
sudo apt-get -y dist-upgrade

echo

echo -e "step 6: remove unused packages"
sudo apt-get -y --purge autoremove

echo

echo -e "step 7: clean up"
sudo apt-get -y autoclean


                                                                    
                                                                    
