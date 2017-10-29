if test -f $1
then
if test -f $2
then
mv $1 tempfile.temp
mv $2 $1
mv tempfile.temp $2
else
echo "$2 is not a file. Quitting"
fi
else
echo "$1 isn't a file"
fi
