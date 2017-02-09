# bashRepo
sed -e "s/,/\n/g" < hosts > host_file
echo "Enter Command"
read command
pssh -i -h host_file $command
