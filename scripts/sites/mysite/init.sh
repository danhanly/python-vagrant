#!/bin/bash
#
rm -f /etc/nginx/sites-enabled/mysite.conf

cp /etc/vagrant/uwsgi_params /etc/projects/mysite
cp /etc/vagrant/mysite.conf /etc/nginx/sites-available

sudo ln -s /etc/nginx/sites-available/mysite.conf /etc/nginx/sites-enabled/
