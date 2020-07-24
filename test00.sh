#!/bin/bash

#testing legit-init

echo '----- 1 ---------'
./legit-init random arguments; #error (usage)
./legit-init; #should create rep
./legit-init; #error (.legit exists already)








