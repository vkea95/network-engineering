# Practice 01 — Network Observation

Goal:

Understand the basic Internet request process.

---

## DNS Lookup

dig google.com

Simplified:

dig google.com +short

Observe:

domain → IP

---

## Connectivity

ping google.com

Observe:

latency  
packet loss  

---

## HTTP Inspection

curl -I https://google.com

Observe:

HTTP status code

---

## Full Request

curl -v https://google.com

Observe:

DNS resolution  
TCP connection  
TLS handshake  
HTTP response  

---

## Port Test

nc -vz google.com 443