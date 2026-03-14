# Learning Roadmap

This roadmap focuses on practical engineering ability rather than theory memorization.

---

## Phase 1 — Network Observation

Goal:

Understand the real network request chain.

domain
↓
DNS
↓
IP
↓
TCP port
↓
TLS
↓
HTTP

Core Tools:

dig
ping
curl
nc
ss

Key Skills:

DNS lookup  
HTTP inspection  
port testing  

---

## Phase 2 — Shell Automation

Goal:

Turn manual commands into reusable tools.

Key Shell Skills:

variables  
arguments  
if conditions  
functions  
pipes  
exit codes  

Example Tools:

check_dns.sh  
check_port.sh  
check_http.sh  

---

## Phase 3 — Network Troubleshooting

Goal:

Develop a repeatable debugging workflow.

Standard Investigation Order:

1 DNS
2 Connectivity
3 TCP port
4 TLS
5 HTTP
6 Local socket state
7 Packet capture

Core Tools:

curl -v  
ss  
tcpdump  
traceroute  

---

## Phase 4 — Network Exploration

Goal:

Understand network services and discovery.

Tools:

nmap  
wireshark  

Skills:

port scanning  
service detection  
banner grabbing  

---

## Phase 5 — Web Security Awareness

Goal:

Understand common web vulnerabilities.

Topics:

XSS  
SQL Injection  
CSRF  
IDOR  

Tools:

curl  
browser devtools  
Burp Suite (optional)