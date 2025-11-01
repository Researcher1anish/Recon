**** Subdomain Hunter****

Subdomain Gatherer is a simple automation script designed to find and collect subdomains efficiently using popular tools like subfinder, findomain, assetfinder, and httpx.

It combines the power of multiple recon tools to help bug bounty hunters and penetration testers perform subdomain enumeration faster and more effectively.

**** Requirements****

Before running the script, make sure you have the following tools installed:

subfinder

findomain

assetfinder by tomnomnom

httpx by projectdiscovery

You can install them using:

sudo apt install subfinder findomain

go install github.com/tomnomnom/assetfinder@latest

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest


Make sure $GOPATH/bin is added to your system PATH.

🚀 Usage
bash subhunt.sh


🧑‍💻 Author

Ꭺɴɪsʜ — Ethical Hacker & Bug Hunter
