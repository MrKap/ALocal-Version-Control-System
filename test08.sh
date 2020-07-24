#!/bin/bash

#testing legit-branch and legit-checkout

echo "~~~~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-branch shoulderror;
./legit-checkout shoulderror;
./legit-init;

echo 1 > a;
./legit-add a;
./legit-commit "First Commit";
./legit-branch firstBranch;
./legit-branch secondBranch;
./legit-branch;
./legit-branch -d firstBranch;
./legit-checkout secondBranch;

echo "~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~";
echo 2 > b;
./legit-add b;
./legit-commit -m "Second COmmit"
./legit-branch thirdBranch;
./legit-checkout thirdBranch;
./legit-branch -d secondBranch;

echo "~~~~~~~~~~~ 3 ~~~~~~~~~~~~~~";
./legit-checkout randomBranch;
./legit-branch


