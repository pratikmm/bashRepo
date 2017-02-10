# here we are using pssh command to ssh into multiple hotst parallely and execute the given commands.
#install pssh using following command
#yum -y install pssh
#hosts is file in which hostnames are stored in comma separated format e.g user1@hostname,user2@hostname.
sed -e "s/,/\n/g" < hosts > host_file #replaces commas ',' which new line charactes '\n' and store it in host_file file
echo "Enter Command" #takes commands to be run on connected machines e.g pwd ; ls ; whoami
read command
pssh -i -h host_file $command #pssh command which will take host names from host_file and connect all the hosts and executes the command
#passworldless ssh must be configured for these users.
