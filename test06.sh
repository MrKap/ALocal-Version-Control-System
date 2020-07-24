#!/bin/bash

# Testing legit-rm

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-rm random args but no .legit;
./legit-init;
./legit-rm nonexistantfile;
./legit-rm with random args;

echo 2 > b;
./legit-add b;
./legit-rm b;

./legit-rm --cached b;

./legit-add b;
./legit-rm --force b;

echo "~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~";
echo 1 > a;
echo 2 > b;
echo 3 > c;
echo 4 > d;
./legit-add a b c d;
./legit-commit -m "first commit";
echo 213123 >> a;
./legit-add a;
./legit-commit -m "second commit";
./legit-rm --cached c;
./legit-rm --cached --force c;
echo asdasd >> b;
./legit-rm a c;
./legit-rm commit -m "third commit";
./legit-rm --force --cached d;
./legit-rm commit -m "fourth commit";


