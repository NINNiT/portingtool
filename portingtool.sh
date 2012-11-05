#!/bin/bash



while :
do

  clear

# Cleaning
	
  	sudo rm -rf port_rom
	mkdir port_rom
	sudo rm -rf base_rom
	mkdir base_rom

# Menu

  echo 
  echo "***********************************************************"
  echo " 		    XMasterNinni's PortingTools		"
  echo "	           <Easy ROM Porting for everyone>		"
  echo "***********************************************************"
  echo 
  echo 
  echo " ######################			####################"
  echo "  Tools for ROM Porting			       Extras       "
  echo " ######################			####################"
  echo "  1 - Menu			         2 - Tips/Tricks "
  echo 
  echo 
  echo " ######################			####################"										
  echo "	Credits					Update      "
  echo " ######################			####################"
  echo "  c - Show Credits			Feature Coming Soon!"
  echo 				        
  echo " ######################"		 
  echo " 	  Exit		"
  echo " ######################"
  echo "  x - Exit "
  echo 
  echo -n "Enter option: "
  read opt

  if [ "$opt" != "x" ] && [ "$opt" != "u" ] && [ "$opt" != "1" ] && [ "$opt" != "2" ] && [ "$opt" != "c" ]
  then
    scripts/choose_method
  fi
  
  if [ "$?" != "1" ]
  then
    case $opt in
      1) clear; scripts/choose_method; continue;;
      2) scripts/tips; continue;;
      c) scripts/about; continue;;
      x) clear; exit 1;;
    esac
  fi

  scripts/press_enter

done

