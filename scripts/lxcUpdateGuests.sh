#!/bin/bash
guests=`lxc list -c n |grep -v "^+" | awk '{if (NR>1) print $2}'`
for guest in ${guests}; do
  echo updating ${guest} ...
  lxc exec ${guest} apt update
  echo y | lxc exec ${guest} apt upgrade
  echo y | lxc exec ${guest} apt autoremove
done
