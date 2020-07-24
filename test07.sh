#!/bin/bash

#testing legit-status

echo "~~~~~~~~~~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~~~~~";
./legit-status many args no legit directory;
./legit-status;
./legit-init;
echo 2 > b;
./legit-add b;
./legit-status with many args;
./legit-status;
./legit-commit -m "first commit";
./legit-status;

echo "~~~~~~~~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~~~~~~";
./legit-branch firstBranch;
./legit-checkout firstBranch;
./legit-status;
echo hello > a;
./legit-add a;
./legit-status;
./legit-commit -m "second commit";
./legit-status;

echo "~~~~~~~~~~~~ 3 ~~~~~~~~~~~~~~~~~~~";
./legit-checkout master;
./legit-status;


