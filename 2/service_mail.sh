# There are many services running on the system and notification requirement may vary depending upon the user.
# I am considering uuidd service as an example in this script.
# mail ids
# from
from="abhyag126@gmail.com"
# to
to="abhishekghadge11@gmail.com"
# subject
subject="uuidd service down"
# check for service
response=$(service uuidd status)
error="/usr/sbin/uuidd is NOT running"
if [ "$response" == "$error" ];
then
	echo "Service down, sending mail"
	echo -e "Your uuidd service is down" | mail -s "$subject" "$to"
else
	echo "service running"
fi
exit 0
