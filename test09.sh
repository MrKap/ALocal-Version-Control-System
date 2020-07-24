#!/bin/bash

#testing legit-merge

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-init;
echo 1 > a;
./legit-add a;
./legit-commit -m "First Commit";
./legit-branch firstBranch;
./legit-checkout firstBranch;

echo hello > a;
./legit-add a;
./legit-commit -m "Second commit";
./legit-checkout master;
./legit-merge firstBranch;

echo "~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~";
echo random > a;
./legit-add a;
./legit-commit -m "Third Commit";
./legit-checkout firstBranch;

echo r4nd0m > a;
./legit-add a;
./legit-commit -m "Fourth Commit";
./legit-checkout master;
./legit-pl merge firstBranch;

