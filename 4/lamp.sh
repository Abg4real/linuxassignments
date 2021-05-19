echo "Updating"
sudo apt-get update
echo "Installing apache..."
sudo apt install apache2
echo "Apache status"
echo "UFW Firewall profiles"
sudo ufw app list
echo "Checking for Apache full profile..."
sudo ufw app info “Apache Full”
echo "Installing mysql"
sudo apt-get install mysql-server
echo "Installing php"
sudo apt-get install php libapache2-mod-php php-mysql
echo "modify the way Apache serves files when directories are requested. "
sleep 2
echo "By default, Apache first looks for a file card named index.html. "
sleep 2
echo "However, we want it to look for the index.php file instead."
sleep 2
echo "Bring index.php to the first position in the dir.conf file"
sleep 2
echo "Opening dir.conf file"
sleep 2
sudo nano /etc/apache2/mods-enabled/dir.conf
echo "Restarting apache"
sudo systemctl restart apache2
echo "Lamp stack has been installed successfully. "
echo "By default, 'web root directory is' /var/www/html/"