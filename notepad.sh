#!/bin/bash
clear
declare fn
fn=""
while [[ $fn = "" ]]; do
echo "Please enter File Name: "
read fn
echo "You Must Enter File Name!"
done
if [[ -f $fn && -w $fn ]] 
then
clear
echo "Please enter some text, to finish Press <ctrl>+d"
cat $fn
cat >>$fn
else
echo "Prepering file premmisions for writting..."
touch $fn
chmod 700 $fn
echo "Please enter some text, to finish Press <ctrl>+d"
cat >>$fn
fi
