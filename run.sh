#!/bin/bash

#Allow TCP/IP socket
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /etc/postgresql/9.4/main/postgresql.conf


#Enable client authentication
cat >> /etc/postgresql/9.4/main/pg_hba.conf <<EOF
# Accept all IPv4 connections
host    all         all         0.0.0.0/24             md5
EOF

# Restart PostgreSQL Server
/etc/init.d/postgresql restart


apt-get install postgresql-client -y

exec supervisord -n