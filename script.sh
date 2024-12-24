#!/bin/bash

name=$(uname -a)
ph_cores=$(grep "physical id" /proc/cpuinfo | wc -l)
v_cores=$(grep processor /proc/cpuinfo | wc -l)
freeram=$(free --mega | awk '$1 == "Mem:" {print $3}')
totalram=$(free --mega | awk '$1 == "Mem:" {print $2}')

echo "****Machine info: $name"
echo "****Number of physical cores: $ph_cores"
echo "****Number of virtual cores: $v_cores"
echo "****Free system memory: $freeram MB"
echo "****Total system memory: $totalram MB"
