#!/bin/bash

#testing legit-commit

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~"
./legit-commit with wrong args; #error for not having .legit repository
./legit-init;
./legit-commit; #usage error
./legit-commit with wrong args; #usage error
./legit-commit -m too many args; #usage error
./legit-commit two args; #usage error, because no -m
./legit-commit -m; #usage error, because no message
./legit-commit -m "Commit without adding first"; #nothing to commit

echo " ~~~~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~~"

echo 1 > a;
echo 2 > b;
echo 3 > c;
./legit-add a b c;
./legit-commit -m "First Commit";
./legit-show 0:a; #check commit worked
./legit-show 0:b; #
./legit-show 0:c; #
./legit-show :a;  #check files are still in index
./legit-show :b;  #
./legit-show :c;  #
