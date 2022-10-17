#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKENgit@github.com/MehmetCDmr/aws_capstone_matt.git
>>>>>>> c89b89d (new changes)
cd /home/ubuntu/aws_capstone_matt
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws_capstone_matt/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
