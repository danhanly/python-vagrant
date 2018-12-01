#!/bin/bash

cd /etc/projects/mysite
sudo service nginx start
fuser -k 8001/tcp
uwsgi --socket :8001 --module mysite.wsgi --chmod-socket=664 &
