#!/bin/sh

# at local
container="contact-form-with-CA-webapp"
document_root="/var/www/vhosts/html/"
docker exec -it ${container} composer create-project --prefer-dist cakephp/app ${document_root}
