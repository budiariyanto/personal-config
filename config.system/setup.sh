#source config.sh
#./hosts.sh
CURRENT_USER=$(whoami)

if [ $CURRENT_USER != "root" ]; then
	echo "Only root can run this script...";
	exit 1;
fi


