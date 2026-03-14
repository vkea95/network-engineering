# Linux Network CLI Cheat Sheet

This sheet maps commands to network layers.

Network request path:

Domain
↓
DNS
↓
IP Connectivity
↓
TCP Port
↓
TLS
↓
HTTP
↓
Application

---

# DNS

Query DNS

dig example.com

Short output

dig example.com +short

Specify DNS server

dig @8.8.8.8 example.com

Check DNS time

dig example.com

Look for:

Query time

---

# Connectivity

Check if host reachable

ping example.com

Key signals:

latency  
packet loss  

---

# TCP Port

Test port

nc -vz host port

Example

nc -vz google.com 443

---

# HTTP

Check HTTP headers

curl -I https://example.com

Verbose request

curl -v https://example.com

Download page

curl https://example.com

POST request

curl -X POST url -d "data"

---

# Socket State

View listening services

ss -tulpn

View active connections

ss -tan

---

# Routing

Show route

ip route

Trace path

traceroute example.com

Continuous trace

mtr example.com

---

# Packet Capture

Capture port traffic

tcpdump port 443

Capture host

tcpdump host 8.8.8.8

Capture DNS

tcpdump port 53

---

# Network Scan

Scan ports

nmap target

Example

nmap scanme.nmap.org

---

# Quick Troubleshooting Flow

Website not working?

Step 1

dig example.com

Step 2

ping example.com

Step 3

nc -vz example.com 443

Step 4

curl -v https://example.com

Step 5

ss -tulpn

Step 6

tcpdump