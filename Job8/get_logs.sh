datenow=$(date +%d-%m-%Y-%H:%M)
cd /home/debian/Documents/shell.exe/Job8/
last | wc -l > "number_connection-$datenow.log"
tar -cf "Backup/number_connection-$datenow.tar" "number_connection-$datenow.log"
rm "number_connection-$datenow.log"
