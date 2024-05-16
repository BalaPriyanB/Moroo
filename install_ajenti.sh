#!/bin/bash

apt-get update

apt-get install -y nano curl

curl https://raw.githubusercontent.com/ajenti/ajenti/1.x/scripts/install.sh | bash -s -
