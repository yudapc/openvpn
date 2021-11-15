#!/bin/bash

# export CLIENTNAME=userfree
docker-compose up -d
docker-compose run --rm openvpn ovpn_genconfig -u udp://$(curl ipinfo.io/ip)
docker-compose run --rm openvpn ovpn_initpki