# Linux Network Command Map

This map shows which command belongs to which layer.

---

DNS

dig example.com

---

Connectivity

ping example.com

---

TCP Port

nc -vz host port

---

HTTP

curl -I https://example.com

curl -v https://example.com

---

Socket State

ss -tulpn

---

Routing

traceroute example.com

mtr example.com

---

Packet Capture

tcpdump port 443

tcpdump host 8.8.8.8

tcpdump port 53

---

Network Scanning

nmap target