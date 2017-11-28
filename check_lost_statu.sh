# when using apt-get to install app,point out : lock are you root etc.run the shell can solve the error
sudo mkdir -p /var/lib/dpkg/{alternatives,info,parts,triggers,updates}
sudo cp /var/backups/dpkg.status.0 /var/lib/dpkg/status 
apt-get download dpkg
sudo dpkg -i dpkg*.deb 
apt-get download base-files
sudo dpkg -i base-files*.deb 
sudo dpkg --audit
sudo apt-get update
sudo apt-get check 
