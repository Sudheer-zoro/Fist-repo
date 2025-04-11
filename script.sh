#! /bin/bash

# installing wget unzip httpd #

yum install wget unzip httpd -y

# Starting thr httpd service #

systemctl start httpd

systemctl enable httpd

#Download the template from tooplate site #

mkdir /tmp/tooplate/

cd /tmp/tooplate/

wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip

unzip 2136_kool_form_pack.zip

cp -r 2136_kool_form_pack/* /var/www/html/

#Restarting the service #

systemctl restart httpd

systemctl status httpd
