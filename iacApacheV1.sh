#! /bin/bash

	echo "Updating server..."
	
	apt-get update -y
	apt-get upgrade -y

	echo "Installing Apache server..."

	apt-get install apache2

	echo "Installing unzip..."

	apt-get install unzip -y

	echo "Downloading application from github..."

	cd /tmp
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	
	echo "Unzipping files..."

	unzip main.zip

	echo "Copying files to apache standard folder..."

	cd linux-site-dio-main
	cp -r * /var/www/html/

	echo "restarting apache..."

	systemctl restart apache2

	echo "Sorted out!!!"


