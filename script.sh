#!/bin/sh

echo 'calling ....'

./var/aem-6.4/crx-quickstart/bin/start


while $1
do
sleep 10
echo "---------------- error.log---------------------"
cat /var/aem-6.4/crx-quickstart/logs/error.log



echo "---------------- stdout.log---------------------"
cat /var/aem-6.4/crx-quickstart/logs/stdout.log

done