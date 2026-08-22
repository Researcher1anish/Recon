#!/bin/bash
echo " ____        _     _                 _
/ ___| _   _| |__ | |__  _   _ _ __ | |_
\___ \| | | | '_ \| '_ \| | | | '_ \| __|
 ___) | |_| | |_) | | | | |_| | | | | |_
|____/ \__,_|_.__/|_| |_|\__,_|_| |_|\__|
"
# Starting Recon...
read -rp "[!] Enter domain name:" domain

echo "[!] You entered:$domain"

echo

# Finding domain through subfider.
subfinder -d "$domain"  -all -o subfinder.txt

echo

# Finding domain through assetfinder.
echo "[!] Now running assestfinder..."
assetfinder -subs-only "$domain"  > assetfinder.txt
echo ":: Finished - "

echo

# Finding domain through findomain.
echo "[!] Now running findomain..."
findomain -t "$domain" -u findomain.txt

echo
# Finding domain through Virustotal
echo "[!] Now running virustotal..."
curl -s "https://www.virustotal.com/vtapi/v2/domain/report?apikey=YOUR_API_KEY_HERE&domain=$domain" | jq -r '.subdomains[]' > VirusSub.txt
echo ":: Finished  "

echo

# Sorting out the found subdomains.
echo ":: Now sorting all the subdomains..."
cat subfinder.txt assetfinder.txt findomain.txt VirusSub.txt | sort -u  > all_subdomain.txt
echo ":: Sorted domains files into all_subdomains.txt"
echo
echo ":: Results saved in all_subdomains.txt"
echo
rm assetfinder.txt findomain.txt subfinder.txt VirusSub.txt
echo "GOOD LUCK!"
