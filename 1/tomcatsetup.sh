# Setting up tomcat server
echo "Welcome to Tomcat server setup"
java -version 2> /dev/null #To suppress the error response on terminal
if [ "$?" = "0" ];
then
    echo "JRE installed"
else 
    echo "JRE not installed, Installing JRE"
    sudo apt install default-jdk
fi
echo "For security reasons, root cannot be used as a user to run Tomcat."
echo "Creating new group..."
sudo groupadd tomcat
echo "Creating new system user..."
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
echo "The directory to run tomcat service is /opt/tomcat"
echo "Downloading and installing tomcat"
cd /tmp
# curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-9.0.46.tar.gz -C /opt/tomcat --strip-components=1
echo "Modifying permissions for new user"
cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work temp/ logs
echo "Your currently installed java packages"
sudo update-java-alternatives -l
echo "Creating tomcat.service file"
echo "Enter the directory for tomcat.service file"
read tomcat
cd "$tomcat"
sudo cp tomcat.service /etc/systemd/system
echo "System daemon reload"
sudo systemctl daemon-reload
echo "starting tomcat"
sudo systemctl start tomcat
echo "Tomcat status"
sudo systemctl status tomcat




