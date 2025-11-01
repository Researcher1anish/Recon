#!/bin/bash
echo " ____        _     _                 _   
/ ___| _   _| |__ | |__  _   _ _ __ | |_ 
\___ \| | | | '_ \| '_ \| | | | '_ \| __|
 ___) | |_| | |_) | | | | |_| | | | | |_ 
|____/ \__,_|_.__/|_| |_|\__,_|_| |_|\__|
"
# Starting Recon...
read -rp "[!]Enter domain name:" domain

echo "[!]You entered:$domain"
echo

# Finding domain through subfider.
subfinder -d "$domain" -o subfinder.txt
echo

# Finding domain through assetfinder.
echo "[!]Now running assestfinder..."
assetfinder  "$domain"  > assetfinder.txt
echo "[!]Finished - "
echo

# Finding domain through findomain.
echo "[!]Now running findomain..."
findomain -t "$domain" -u findomain.txt
echo

# Sorting out the found subdomains.
echo "[!]Now sorting all the subdomains..."
cat subfinder.txt assetfinder.txt findomain.txt | sort -u  > all_subdomain.txt
echo "[!]Sorted domains files into all_subdomain.txt"
echo

# Checkinf for the live hosts.
echo "[!]Now checking for the live domains through httpx"
cat all_subdomain.txt | httpx -silent -status-code -title -location -o live_domains.txt
echo
echo "[!]Results saved in live_domains.txt"
echo

echo "GOOD LUCK!"
