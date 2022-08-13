#!/bin/sh
sudo dscl . -create /Users/administrator
sudo dscl . -create /Users/administrator UserShell /bin/bash
sudo dscl . -create /Users/administrator RealName Administrator
sudo dscl . -create /Users/administrator UniqueID 1001
sudo dscl . -create /Users/administrator PrimaryGroupID 1000
sudo dscl . -create /Users/administrator NFSHomeDirectory /Local/Users/administrator
sudo dscl . -passwd /Users/administrator Donutwory@2024
sudo dscl . -append /Groups/admin GroupMembership administrator 

