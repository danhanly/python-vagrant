#!/bin/bash
#
# Install git for version control, pip for install python packages
echo 'Installing dependencies.'
sudo apt update
sudo apt install -y git nginx python3 python3-dev python3-pip postgresql

echo 'Installing python dependencies.'
sudo pip3 install --upgrade pip
sudo pip3 install uwsgi python3-xlib psycopg2 Django