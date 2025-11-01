🕵️ Subdomain Hunter

Subdomain Gatherer is a simple automation script designed to find and collect subdomains efficiently using popular tools like subfinder, findomain, assetfinder, and httpx.

It combines the power of multiple recon tools to help bug bounty hunters and penetration testers perform subdomain enumeration faster and more effectively.

⚙️ Features

Gathers subdomains using multiple sources

Automatically filters and merges results

Checks for live domains using httpx

Saves clean and organized output files

🧰 Requirements

Before running the script, make sure you have the following tools installed:

subfinder

findomain

assetfinder

httpx

You can install them using:

sudo apt install subfinder findomain

go install github.com/tomnomnom/assetfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest


Make sure $GOPATH/bin is added to your system PATH.

🚀 Usage
bash subhunt.sh


When prompted, enter your target domain:

[!] Enter domain name: example.com


The script will:

Run subfinder, findomain, and assetfinder

Merge all subdomains into a single file

Use httpx to find live subdomains

Save results to:

subfinder.txt

findomain.txt

assetfinder.txt

live_domains.txt

📁 Output Example
subfinder.txt       → results from subfinder  
findomain.txt       → results from findomain  
assetfinder.txt     → results from assetfinder  
live_domains.txt    → all active domains found

🧑‍💻 Author

Ꭺɴɪsʜ — Ethical Hacker & Bug Hunter
Focused on web penetration testing and automation for reconnaissance.
