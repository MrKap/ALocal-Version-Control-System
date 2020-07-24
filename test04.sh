#!/bin/bash

#Testing legit-log

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-log with extra args; #error (no .legit exists)
./legit-init;
./legit-log with extra args; #error (no commits)
echo 1 > a;
./legit-add a;
./legit-commit -m "first commit" a;
./legit-log with extra args; #error (usage)
./legit-log; #should work


echo "~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~";
echo 'kgkjg' >> a;
./legit-commit -a -m "second commit";
./legit-log; #Should work and contain both commits

