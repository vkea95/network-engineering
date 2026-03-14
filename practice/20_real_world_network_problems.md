# Real Network Troubleshooting Scenarios

Practice solving real problems.

---

1 Website unreachable

Check:

dig
ping
nc
curl

---

2 DNS resolves wrong IP

Check:

dig
resolver

---

3 TCP port closed

Use:

nc
ss

---

4 High latency

Use:

ping
mtr

---

5 TLS handshake failure

Use:

curl -v

---

6 HTTP redirect loop

Check headers

---

7 Connection refused

Check service

---

8 Packet loss

Use:

mtr

---

9 Local port conflict

Use:

ss -tulpn

---

10 DNS timeout

Check resolver

---

11 HTTP 403

Check headers

---

12 HTTP 500

Check server logs

---

13 Slow DNS

Measure dig time

---

14 Firewall blocking

Check iptables

---

15 TCP reset

Use tcpdump

---

16 TLS certificate error

Inspect certificate

---

17 API timeout

Check latency

---

18 Connection leak

Use ss

---

19 Service listening wrong port

Check configuration

---

20 Intermittent failure

Use tcpdump