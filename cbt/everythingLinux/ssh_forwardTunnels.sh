#!/usr/bin/bash

# connect (own) localhost port 8000 to localhost port 80 on "ubuntu"
ssh -L 8000:localhost:80 ubuntu

# connect (own) local host port 8888 to i.p address 172.20.0.5 port 80 via
# "ubuntu"
ssh -L 8888:172.20.0.5:80:80 ubuntu
