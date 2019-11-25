#!/bin/sh
apt-get update
apt-get -y upgrade
apt-get clean
apt-get -y autoremove
