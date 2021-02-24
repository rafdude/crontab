#!/bin/bash

echo '==============================================================================================='
echo '                             #####  #######    #    ######  #######'
echo '  #   #   #   #   #   #     #     #    #      # #   #     #    #        #   #   #   #   #   #  '
echo '   # #     # #     # #      #          #     #   #  #     #    #         # #     # #     # #   '
echo ' ####### ####### #######     #####     #    #     # ######     #       ####### ####### ####### '
echo '   # #     # #     # #            #    #    ####### #   #      #         # #     # #     # #   '
echo '  #   #   #   #   #   #     #     #    #    #     # #    #     #        #   #   #   #   #   #  '
echo '                             #####     #    #     # #     #    #                               '
echo '==============================================================================================='
echo 
echo 

now=$(date)
echo "Current time: $now"

echo 
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

now=$(date)
echo "Current time: $now"                                                       
   
echo "Step 8: Rebooting if needed..."                                                                 
needrestart -r i

echo '==============================================================================================='
echo '                                    ####### #     # ######'
echo '  #   #   #   #   #   #   #   #     #       ##    # #     #     #   #   #   #   #   #   #   #  '
echo '   # #     # #     # #     # #      #       # #   # #     #      # #     # #     # #     # #   '
echo ' ####### ####### ####### #######    #####   #  #  # #     #    ####### ####### ####### ####### '
echo '   # #     # #     # #     # #      #       #   # # #     #      # #     # #     # #     # #   '
echo '  #   #   #   #   #   #   #   #     #       #    ## #     #     #   #   #   #   #   #   #   #  '
echo '                                    ####### #     # ######'
echo '==============================================================================================='
