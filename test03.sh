#!/bin/bash

#testing legit-commit

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-init;
echo 1 > a;
echo 2 > b;
echo 3 > c;
./legit-add a b c;
./legit-commit -m "First Commit";
./legit-commit -m "Committing with no change"; #nothing to commit
./legit-add a;
./legit-commit -m "Commiting after adding file again, but with no change"; #nothing to commit
./legit-log; #error as no commits exist

echo "~~~~~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~~~~~~~";
echo "word" >> a;
./legit-add a;
./legit-commit -m "Second Commit"; #should commit since file 'a' contents changed.

echo "~~~~~~~~~~~~~~~~~~ 3 ~~~~~~~~~~~~~~~~~~~";
echo "Changed b" > b;
./legit-commit -a -m "third commit"; #Should update file b in the index and commit.


