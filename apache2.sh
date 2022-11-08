#!/bin/bash

apt update
apt install apache2
ufw allow 22
ufw allow Apache
service ufw start
service apache2 restart

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>GlobalLogic DevOps Bootcamp</title>
<body>
<h1>Vladyslav Samoilenko</h1>
</head>
</html>
EOF

curl 127.0.0.1
