#!/bin/sh

# at local
container_name="container-name"
document_root_path="/var/www/html/"
docker exec -it ${container_name} composer create-project --prefer-dist cakephp/app ${document_root_path}
