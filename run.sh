#!/bin/sh
docker container prune --force
docker image prune -a --force
docker volume rm $(docker volume ls -q)

./setup.sh 51.250.35.80

 systemctl restart nginx
 docker compose up
if [ -f "/etc/nginx/sites-enabled/nginx.conf" ]; then
   rm /etc/nginx/sites-enabled/nginx.conf
fi
if [ -f "compose.yaml" ]; then
   rm compose.yaml
fi
if [ -f "nginx.conf" ]; then
   rm nginx.conf
fi

 rm /etc/nginx/sites-enabled/nginx.conf
 ln -s $(pwd)/nginx.conf /etc/nginx/sites-enabled/
 systemctl restart nginx
docker compose up