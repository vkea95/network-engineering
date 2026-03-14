# Shell Basics for Network Automation

Variables

name="test"
echo $name

---

Arguments

$1
$2

---

Conditions

if [ $? -eq 0 ]
then
 echo "success"
fi

---

Functions

check_dns() {
 dig $1 +short
}

---

Pipes

curl example.com | grep html