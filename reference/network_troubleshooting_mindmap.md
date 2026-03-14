# Network Troubleshooting Mind Map

Goal: find where the failure occurs in the network path.

Network request path:

User
↓
Browser / Client
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
Application Server


---

# Step 1 — DNS

Question:

Does the domain resolve correctly?

Command:

dig example.com
dig example.com +short

Possible issues:

NXDOMAIN
wrong IP
slow DNS

Fix ideas:

change DNS server
check resolver
check domain config


---

# Step 2 — Connectivity

Question:

Is the host reachable?

Command:

ping example.com

Check:

latency
packet loss

Possible issues:

network outage
routing problem


---

# Step 3 — TCP Port

Question:

Is the service port open?

Command:

nc -vz host port

Example:

nc -vz example.com 443

Possible issues:

service not running
firewall blocking
wrong port


---

# Step 4 — HTTP / Application

Question:

Does the server respond correctly?

Command:

curl -I https://example.com
curl -v https://example.com

Check:

HTTP status
redirects
headers


---

# Step 5 — Local Socket State

Question:

Is the service actually listening?

Command:

ss -tulpn

Example output:

LISTEN 0 128 0.0.0.0:443


---

# Step 6 — Routing

Question:

Where does traffic go?

Command:

ip route
traceroute example.com
mtr example.com


---

# Step 7 — Packet Level

Question:

What is actually happening on the wire?

Command:

tcpdump port 443

Example:

tcpdump host 8.8.8.8

Use when:

connections reset
unexpected traffic
TLS errors


---

# Golden Rule

Always debug in this order:

DNS
→ Connectivity
→ TCP port
→ HTTP
→ Socket
→ Routing
→ Packet