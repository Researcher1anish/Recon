 **Subdomain Hunter**

Subdomain Gatherer is a simple automation script designed to find and collect subdomains efficiently using popular tools like subfinder, findomain, assetfinder, and Virustotal query.

It combines the power of multiple recon tools to help bug bounty hunters and penetration testers perform subdomain enumeration faster and more effectively.

****Requirements****

Before running the script, make sure you have the following tools installed:

subfinder

findomain

assetfinder by tomnomnom


You can install them using:

sudo apt install subfinder findomain

go install github.com/tomnomnom/assetfinder@latest

_Make sure $GOPATH/bin is added to your system PATH._

****Usage****
```
git clone https://github.com/anisub004/Recon.git
Edit the subhunt.sh file to put your virustotal api key 

chmod +x subhunt.sh

bash subhunt.sh

[!] Enter domain name: example.com
```

🧑‍💻 Author

Ꭺɴɪsʜ — Ethical Hacker & Bug Hunter
