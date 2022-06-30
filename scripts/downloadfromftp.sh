#!/bin/bash

ticketno=$1
username=sandra.jiang
site=support-sftp-pix-prod-1.it.puppet.net
dest=/root/tickets/$ticketno

echo "Please input file name to download from Support Upload Website:"

read filename

scp -i ~/.ssh/id_rsa_support -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $username@$site:/tmp/$filename $dest

#scp -i ~/key.pem $username@$site:/tmp/$filename .

echo "Download Completed!"
