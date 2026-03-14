# Practice 02 — Shell Automation

Goal:

Convert manual commands into reusable scripts.

---

## check_dns.sh

dig $1 +short

---

## check_port.sh

nc -vz $1 $2

---

## check_http.sh

curl -I $1

---

Example:

./check_http.sh https://example.com