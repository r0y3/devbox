#!/usr/bin/env bash
set -e
set -u
set -x

apt -y update && apt-get -y upgrade

# Add vagrant user to sudoers.
echo "vagrant ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
