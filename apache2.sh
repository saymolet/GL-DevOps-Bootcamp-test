#!/bin/bash

apt update

# Install apache2
apt install apache2

# Config firewall rules. Allow traffic on ssh port
ufw allow 22

# Config firewall rules. Allow traffic on 80 (http) and 443 (https) port 
ufw allow Apache

# Enable ufw deamon 
service ufw start

# Restart apache2 service
service apache2 restart

# Replace default apache2 html. Now is contains name and surname
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

# Curl the localhost to ensure that script works correctly
curl 127.0.0.1
