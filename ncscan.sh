#!/bin/bash

#Record information about Hosts to scan and what Ports to check for
read -p $'What Network do you want to scan?(Ex. XXX.XXX.XXX)\x0a---> ' network
read -p $'What Host do you want to start at?(Ex. XXX)\x0a---> ' start
read -p $'What Host do you want to end at?(Ex. XXX )\x0a---> ' end
read -p $'What Ports do you want to scan for?(Ex. X-XX XXX)\x0a---> ' ports

#Scan for Hosts between START and END, with specified OPEN ports
for (( host=$start; host<=$end; host++))
do
	nc -vznw1 $network.$host $ports | grep open
done
