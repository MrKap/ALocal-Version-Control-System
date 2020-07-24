#!/bin/bash

#Testing legit-add

echo '------ 1 ------'
echo 1 > a;
echo 2 > b;
echo 3 > c;
echo 4 > d;
echo 5 > e;
echo 6 > f;
echo invalidfile > ,,
rm -rf .legit;
./legit-add; #error (.legit doesnt exist)
./legit-init;
./legit-add a b z; # error (as z doesnt exist) -> a and b shouldn't add
./legit-add a ,; #error (for invalid filename) ->a shouldn't add
./legit-add; #error (no args)
./legit-add a b c d e f;
./legit-add ,,; #error (invalid filename)

