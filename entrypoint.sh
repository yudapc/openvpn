#!/bin/sh
docker-compose run --rm openvpn ovpn_genconfig -u udp://$(curl ipinfo.io/ip)
docker-compose run --rm openvpn ovpn_initpki