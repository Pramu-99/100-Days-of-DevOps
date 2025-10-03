#! /bin/bash

# zip the content
zip -r xfusioncorp_ecommerce.zip /var/www/html/ecommerce

# copy the file to backup server
scp -r xfusioncorp_ecommerce.zip clint@stbkp01:/backup