#!/bin/bash
sudo apt-get update  > /dev/null 2>&1

########################
#  Node
########################
#echo "Installing Node"
#sudo apt-get install -y nodejs
#sudo apt-get install -y npm

########################
# Jenkins
########################
echo "Installing Java"
sudo apt-get install openjdk-8-jdk
#sudo apt-get -y install default-jre > /dev/null 2>&1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

########################
# maven
########################
sudo apt-get -y install maven

########################
# Jenkins
########################
echo "Installing Jenkins"
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update > /dev/null 2>&1
sudo apt-get -y install jenkins > /dev/null 2>&1
sudo usermod -aG jenkins docker
sudo service Jenkins restart

	
# nginx
########################
#echo "installing node"
#sudo apt-get update > /dev/null 2>&1
#sudo apt-get install nodejs
#sudo apt-get install npm

########################
# nginx
########################
#echo "Installing nginx"
#sudo apt-get -y install nginx > /dev/null 2>&1
#sudo service nginx start

########################
# Configuring nginx
########################
#echo "Configuring nginx"
#cd /etc/nginx/sites-available
#sudo rm default ../sites-enabled/default
#sudo cp /vagrant/VirtualHost/jenkins /etc/nginx/sites-available/
#sudo ln -s /etc/nginx/sites-available/jenkins /etc/nginx/sites-enabled/
#sudo service nginx restart
#sudo service jenkins restart
#echo "Success"
