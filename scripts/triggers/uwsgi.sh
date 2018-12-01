#!/bin/bash
cd /etc/projects/mysite

uwsgi --socket :8001 --module mysite.wsgi --chmod-socket=664 &