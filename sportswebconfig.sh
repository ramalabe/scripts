#!/bin/bash
echo
echo "########################"
echo "Updating Packages"
echo "########################"
sudo apt update -y > /dev/null
echo
echo "########################"
echo "Installing Git"
echo "########################"
sudo apt install git -y > /dev/null
echo
echo "########################"
echo "Installing Web Service"
echo "########################"
sudo apt install apache2 -y > /dev/null
echo
echo "########################"
echo "Downloading Web Content"
echo "########################"
echo
git clone https://github.com/ramalabe/webdev-cw.git > /dev/null
echo
echo "##################################"
echo "Adding Web Content to the Server"
echo "##################################"
echo
sudo cp -r webdev-cw/* /var/www/html/
echo
echo "########################"
echo "Restarting Web Service"
echo "########################"
sudo systemctl enable apache2 > /dev/null
sudo systemctl restart apache2
echo
echo "Web Configuration Done !"
echo
