#!/bin/bash

#testing mainly legit-show and a small part on commit

echo "~~~~~~~~~~~ 1 ~~~~~~~~~~~~~~";
./legit-show with random args; #error (no .legit exists)
./legit-init;
./legit-show with random args; #error (no commits)
echo 1 > a;
./legit-add a;
./legit-commit -m "first commit" a;
./legit-show; #error (usage)
./legit-show with random args; #error (usage)
./legit-show noSemiColonInArg #error (invalid object)
./legit-show 0:; #error (invalid filename)
./legit-show 0:randomfile; #error (file not found in commit)
./legit-show 1:randomfile; #error (unknown commit)
./legit-show :randomfile; #error (file not found in index)

echo "~~~~~~~~~~~ 2 ~~~~~~~~~~~~~~";
./legit-show :a;
./legit-show 0:a;
echo 2 > b;
./legit-add b;
./legit-show :b;

echo "~~~~~~~~~~~ 3 ~~~~~~~~~~~~~~";
./legit-commit -m "second commit";
./legit-show :a; #check to make sure 'a' is still in index and can be shown.
./legit-show 1:a; #check to make sure commit 1 also has 'a' from previous commit and that it can be shown.


