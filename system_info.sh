#!/bin/bash
# This script allows you to extract useful information from a *NIX host using a menu-driven interface. 

# Define Variables 
LSB=/usr/bin/lsb_release 

# Display pause prompt
# $1-> Message
function pause(){
    local message="$@"
    [ -z $message ] && message="Press [Enter] key to continue..."
    read -p "$message" readEnterKey
}

# Display on-screen menu
function show_menu(){
    date
    echo ""
    echo "  Main Menu   "
    echo ""
        echo "1. OS Info" 
}

# Display header message 
# $1 - message 
function write_header(){
    local h="$@"
    echo ""
    echo "  ${h}    "
    echo ""
} 