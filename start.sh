#!/bin/bash

echo "Please enter your webisite name:"
read website_name
sed -i s/website_name/$website_name/g setting.sh

echo "Please enter your webisite url (without http://) :"
read website_url
sed -i s/website_url/$website_url/g setting.sh
sed -i s/website_url/$website_url/g config/config.js

echo "Please enter your port number:"
read website_port
sed -i s/website_port/$website_port/g setting.sh

sh ./setting.sh