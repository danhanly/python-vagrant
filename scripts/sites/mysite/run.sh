#!/bin/bash

cd /etc/projects/mysite
sudo service nginx start
uwsgi --socket :8001 --module mysite.wsgi --chmod-socket=664 &
