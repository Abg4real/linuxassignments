echo "Updating..."
sudo apt-get update
echo "Installing nginx server..."
sudo apt install nginx
echo "Checking current application profiles"
sudo ufw app list
echo "Allowing trafic on port 80"
sudo ufw allow "Nginx HTTP"
echo "Here's the status of UFW"
sudo ufw status
echo "Checking status nginx server"
systemctl status nginx
echo "Current root directory for default website is /var/www"
echo "Change it to /content/webapp"
echo "Opening the config file"
sleep 4
sudo nano /etc/nginx/sites-enabled/default
echo "The directory has been changed".