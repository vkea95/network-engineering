# Troubleshooting Playbook

Standard debugging order.

---

Step 1 — DNS

dig example.com

---

Step 2 — Connectivity

ping example.com

---

Step 3 — Port

nc -vz example.com 443

---

Step 4 — HTTP

curl -v https://example.com

---

Step 5 — Local socket state

ss -tulpn

---

Step 6 — Packet capture

tcpdump