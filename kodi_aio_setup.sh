#!/bin/bash
#use this one as management script to call all modules

#version
script_version="1.0 Alpha"

#working dir
install="/tmp"

#path to install scripts
scripts="$install/install_scripts"

#path to config scripts
config="$install/config_scripts"

#path to user dialog scripts
dialog="$install/dialog_scripts"

#path to hardware detection scripts
hw="$install/hw_detect"

#start user dialog
. $dialog/welcome.sh

#run install scripts
. $scripts/install_packages.sh
. $scripts/install_vdr.sh
. $scripts/install_oscam.sh
. $scripts/install_pyload.sh
. $scripts/install_cleanup.sh
