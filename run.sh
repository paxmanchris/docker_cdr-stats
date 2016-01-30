#!/bin/bash



cd  /usr/src/

#bash install-cdr-stats.sh > install.log



#Allow TCP/IP socket#
#sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /etc/postgresql/9.4/main/postgresql.conf


#Enable client authentication
#cat >> /etc/postgresql/9.4/main/pg_hba.conf <<EOF
# Accept all IPv4 connections
#host    all         all         0.0.0.0/24             md5
#EOF

# Restart PostgreSQL Server
#/etc/init.d/postgresql restart


#apt-get install postgresql-client -y

#exec supervisord -n



#cdr-stats-functions.sh: line 481: /sbin/ifconfig: No such file or directory
#The local IP-Address used for installation is 172.17.0.2

#super user pass

#echo "Create a super admin user..."
#    python manage.py createsuperuser#


