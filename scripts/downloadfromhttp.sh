#!/bin/bash

username=sandra.jiang
site=supportupload1-prod.ops.puppetlabs.net
dest=/root/tickets

echo "Please input file name to download from Support Upload Website:"

read filename

scp -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $username@$site:/tmp/$filename $dest

#scp -i ~/key.pem $username@$site:/tmp/$filename .

echo "Download Completed!"
